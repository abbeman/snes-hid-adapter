# USB nes/snes adapter

This is the implementation of an NES/SNES gamepad to USB HID adapter using the
[v-usb] library to implement bit-banged USB support on an attiny 25/45/85
microcontroller.

[v-usb]: https://github.com/obdev/v-usb

It looks like I actually based my code on the [DIY USB password generator] from
the code and life blog, so I'm keeping the GPLv3 license from that project, see
[License.txt]. I think I took the NES/SNES gamepad communication code from a
different project online, but I'm not entirely sure where I got it. The
gamepads are basically just a shift register used in parallel input, serial
output configuration. You toggle the latch input to read all button states as
one bit each and then toggle the clock to shift the button bits out, one by one
and read them on the data line. That's it.

[DIY USB password generator]: https://codeandlife.com/2012/03/03/diy-usb-password-generator/
[License.txt]: ./License.txt

# Building

## Intro

The Makefile is set up to build the code using [avr-gcc] and flash the binary to
the microcontroller using avrdude. It's hard wired for my setup using an old
atmel serial port, ISP programmer. Modify the DUDEFLAGS variable to suit your
setup and you should be able to build and flash by:

```sh
$ make
$ make fuse # Only required once to set up the fuses.
$ make flash
```
[avr-gcc]: https://gcc.gnu.org/wiki/avr-gcc

## Required software

You need make, avr-gcc and avrdude to use the Makefile to build and flash the
firmware to an attiny45:

```sh
$ sudo apt install gcc-avr make avrdude
```
