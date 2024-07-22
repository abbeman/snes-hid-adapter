/**
 * Project: AVR ATtiny USB Tutorial at http://codeandlife.com/
 * Author: Joonas Pihlajamaa, joonas.pihlajamaa@iki.fi
 * Base on V-USB example code by Christian Starkjohann
 * Copyright: (c) 2008 by OBJECTIVE DEVELOPMENT Software GmbH
 * License: GNU GPL v3 (see License.txt)
 */
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>
#include <avr/eeprom.h>
#include <util/delay.h>

#include "usbdrv.h"

PROGMEM const char usbHidReportDescriptor[42] = {
    0x05, 0x01,                    // USAGE_PAGE (Generic Desktop)
    0x09, 0x05,                    // USAGE (Game Pad)
    0xa1, 0x01,                    // COLLECTION (Application)
    0x09, 0x01,                    //   USAGE (Pointer)
    0xa1, 0x00,                    //   COLLECTION (Physical)
    0x09, 0x30,                    //     USAGE (X)
    0x09, 0x31,                    //     USAGE (Y)
    0x15, 0x00,                    //     LOGICAL_MINIMUM (0)
    0x25, 0x02,                    //     LOGICAL_MAXIMUM (2)
    0x75, 0x02,                    //     REPORT_SIZE (2)
    0x95, 0x02,                    //     REPORT_COUNT (2)
    0x81, 0x02,                    //     INPUT (Data,Var,Abs)
    0xc0,                          //   END_COLLECTION
    0x05, 0x09,                    //   USAGE_PAGE (Button)
    0x19, 0x01,                    //   USAGE_MINIMUM (Button 1)
    0x29, 0x08,                    //   USAGE_MAXIMUM (Button 8)
    0x15, 0x00,                    //   LOGICAL_MINIMUM (0)
    0x25, 0x01,                    //   LOGICAL_MAXIMUM (1)
    0x75, 0x01,                    //   REPORT_SIZE (1)
    0x95, 0x08,                    //   REPORT_COUNT (8)
    0x81, 0x02,                    //   INPUT (Data,Var,Abs)
    0xc0                           // END_COLLECTION
};


usbMsgLen_t usbFunctionSetup(uchar data[8]) {
    return 0; // by default don't return any data
}

#define abs(x) ((x) > 0 ? (x) : (-x))

// Called by V-USB after device reset
void hadUsbReset() {
    int frameLength, targetLength = (unsigned)(1499 * (double)F_CPU / 10.5e6 + 0.5);
    int bestDeviation = 9999;
    uchar trialCal, bestCal = 0, step, region;

    // do a binary search in regions 0-127 and 128-255 to get optimum OSCCAL
    for(region = 0; region <= 1; region++) {
        frameLength = 0;
        trialCal = (region == 0) ? 0 : 128;

        for(step = 64; step > 0; step >>= 1) {
            if(frameLength < targetLength) // true for initial iteration
                trialCal += step; // frequency too low
            else
                trialCal -= step; // frequency too high

            OSCCAL = trialCal;
            frameLength = usbMeasureFrameLength();

            if(abs(frameLength-targetLength) < bestDeviation) {
                bestCal = trialCal; // new optimum found
                bestDeviation = abs(frameLength -targetLength);
            }
        }
    }

    OSCCAL = bestCal;
}

// Port configs to talk to the SNES gamepad.
#define SNES_DDR   DDRB
#define SNES_PORT  PORTB
#define SNES_PIN   PINB

#define SNES_CLK   PB1
#define SNES_LATCH PB3
#define SNES_DATA  PB4

#define sbi(reg, bit) \
do { \
    reg |= (1 << bit); \
} while(0)

#define cbi(reg, bit) \
do { \
    reg &= (~(1 << bit)); \
} while (0)

#define xbi(reg, bit) \
do { \
    reg ^= (1 << bit); \
} while (0)

#define strobe_pin(port, pin) \
do { \
    sbi(port, pin); \
    _delay_us(1); \
    cbi(port, pin); \
    _delay_us(1); \
} while (0)

#define inv_strobe_pin(port, pin) \
do { \
    cbi(port, pin); \
    _delay_us(1); \
    sbi(port, pin); \
    _delay_us(1); \
} while (0)

typedef struct {
    uint8_t h:2;
    uint8_t v:2;
    uint8_t b:1;
    uint8_t a:1;
    uint8_t y:1;
    uint8_t x:1;
    uint8_t l:1;
    uint8_t r:1;
    uint8_t select:1;
    uint8_t start:1;
} GamepadReport;

void clearReport(GamepadReport *report) {
    report->h = 1;
    report->v = 1;
    report->a = 0;
    report->b = 0;
    report->x = 0;
    report->y = 0;
    report->l = 0;
    report->r = 0;
    report->select = 0;
    report->start = 0;
}

uchar reportsEqual(GamepadReport *r1, GamepadReport * r2) {
    return r1->h == r2->h &&
           r1->v == r2->v &&
           r1->a == r2->a &&
           r1->b == r2->b &&
           r1->x == r2->x &&
           r1->y == r2->y &&
           r1->l == r2->l &&
           r1->r == r2->r &&
           r1->select == r2->select &&
           r1->start == r2->start;
}

// The buildReport is called by main loop and it starts transmitting
// characters when messageState == STATE_SEND. The message is stored
// in messageBuffer and messagePtr tells the next character to send.
// Remember to reset messagePtr to 0 after populating the buffer!
void buildReport(GamepadReport *report) {
    clearReport(report);

    strobe_pin(SNES_PORT, SNES_LATCH);

    if (bit_is_clear(SNES_PIN, SNES_DATA)) {
        report->b = 1;
    }

    strobe_pin(SNES_PORT, SNES_CLK);

    if (bit_is_clear(SNES_PIN, SNES_DATA)) {
        report->y = 1;
    }

    strobe_pin(SNES_PORT, SNES_CLK);

    if (bit_is_clear(SNES_PIN, SNES_DATA)) {
        report->select = 1;
    }

    strobe_pin(SNES_PORT, SNES_CLK);

    if (bit_is_clear(SNES_PIN, SNES_DATA)) {
        report->start = 1;
    }

    strobe_pin(SNES_PORT, SNES_CLK);

    if (bit_is_clear(SNES_PIN, SNES_DATA)) {
        report->v = 0;
    }

    strobe_pin(SNES_PORT, SNES_CLK);

    if (bit_is_clear(SNES_PIN, SNES_DATA)) {
        report->v = 2;
    }

    strobe_pin(SNES_PORT, SNES_CLK);

    if (bit_is_clear(SNES_PIN, SNES_DATA)) {
        report->h = 0;
    }

    strobe_pin(SNES_PORT, SNES_CLK);

    if (bit_is_clear(SNES_PIN, SNES_DATA)) {
        report->h = 2;
    }

    strobe_pin(SNES_PORT, SNES_CLK);

    if (bit_is_clear(SNES_PIN, SNES_DATA)) {
        report->a = 1;
    }

    strobe_pin(SNES_PORT, SNES_CLK);

    if (bit_is_clear(SNES_PIN, SNES_DATA)) {
        report->x = 1;
    }

    strobe_pin(SNES_PORT, SNES_CLK);

    if (bit_is_clear(SNES_PIN, SNES_DATA)) {
        report->l = 1;
    }

    strobe_pin(SNES_PORT, SNES_CLK);

    if (bit_is_clear(SNES_PIN, SNES_DATA)) {
        report->r = 1;
    }

}

int main() {
    uchar i;

    GamepadReport currentState;
    GamepadReport prevState;

    clearReport(&currentState);
    clearReport(&prevState);

    //DDRB = (1 << DDB0) | (1 << DDB3);
    sbi(SNES_DDR, DDB1);
    sbi(SNES_DDR, DDB3);
    cbi(SNES_DDR, DDB4);

    /*
    cbi(TCCR0A, COM0A1);
    cbi(TCCR0A, COM0A0);
    */

    /*
    PORTB &= ~(1 << PINB0);
    PORTB &= ~(1 << PINB3);
    */
    cbi(SNES_PORT, SNES_CLK);
    cbi(SNES_PORT, SNES_LATCH);
    cbi(SNES_PORT, SNES_DATA);

    // Disable the analog comparator, otherwise PB0 can't be controlled as an
    // output pin.
    //sbi(ACSR, ACD);

    wdt_enable(WDTO_1S); // enable 1s watchdog timer

    usbInit();

    usbDeviceDisconnect(); // enforce re-enumeration
    for (i = 0; i<250; i++) { // wait 500 ms
        wdt_reset(); // keep the watchdog happy
        _delay_ms(2);
    }
    usbDeviceConnect();

    // Enable interrupts after re-enumeration.
    sei();

    wdt_reset(); // keep the watchdog happy

    while (1) {
        wdt_reset(); // keep the watchdog happy
        usbPoll();

        // characters are sent when messageState == STATE_SEND and after receiving
        // the initial LED state from PC (good way to wait until device is recognized)
        buildReport(&currentState);
        if (usbInterruptIsReady() && !reportsEqual(&currentState, &prevState)) {
            usbSetInterrupt((void *)&currentState, sizeof(currentState));
            prevState = currentState;
        }
    }

    return 0;
}
