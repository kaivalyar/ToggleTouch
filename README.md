#ToggleTouch
A linux program to enable/disable touch screens and other input devices. A single command for both enabling and disabling (toggling) is especially useful if used as a custom command for _hot-corners_ or other similar triggers.

## Synopsis

This program is designed for linux environments which support the `xinput` command, like Ubuntu and Linux-Mint. It is especially useful if used in conjuncton with hot-corner triggers suach as the ones Unity or Cinnamon, in [Ubuntu](http://techgotcha.com/hot-corners-in-ubuntu/) and [Linux-Mint](http://www.zdnet.com/article/hands-on-with-mint-cinnamons-hot-corners/) respectively. Additionally, the program can be used to control any input device, not just the touch screen.

## Setup

####To install:

1. Download the files `install-toggletouch.sh` and `ToggleTouch.sh`.
2. Move the files to your home directory. 
3. Run the command `sh install-toggletouch.sh` from the terminal.
4. Enter the root password when prompted.
5. When asked, inform ToggleTouch of the current state of your touch screen (or other input device).

####To run:

From the terminal, use the command `toggletouch` to toggle the state of your touchscreen. The same command can be assigned a trigger such as a hot-corner, for greater utility. To configure for other input devices;

1. Run the `xinput` command on your terminal.
2. Note the name of the device you wish to enable/disable from the list displayed.
3. From the name of your choice, determine a word unique only to this device.
3. Use the command `toggletouch <NAME>`, where _<Name>_ is a single, unique word enough to identify a line from the output of `xinput`.

## License

**This project is released under and protected by the MIT License**

_Copyright © 2016 Kaivalya Rawal_

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the “Software”), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.
