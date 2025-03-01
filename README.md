# cl-regis
ReGIS in Common Lisp

:warning: work in progress :construction:

This is for now a prototype only inspired by https://github.com/feilipu/ReGIS.

Citing from the VT330/VT340 Graphics Programming Manual[^1]:

ReGIS is a graphics instruction set from Digital[^2]. ReGIS provides a set of commands you can use to draw images on the screen.

Of course, those terminals are hardly in use today, however, there still are some terminal emulations that support ReGIS graphics. Besides some commercial ones, we are only aware of good old  **XTerm**, however, it must be compiled with `--enable-regis-graphics` contrary to **Sixel** support which is enabled by default. This is, however, no big deal (see below).

## More info about ReGIS

* https://en.wikipedia.org/wiki/ReGIS
* http://www.sizecoding.org/wiki/ReGIS
* https://vt100.net/docs/vt3xx-gp/chapter1.html
* https://en.wikipedia.org/wiki/VT320

## Compiling xterm with ReGIS support
See also https://github.com/feilipu/ReGIS:


    $ sudo apt install -y libxaw7-dev libncurses-dev libxft-dev
    $ wget https://invisible-island.net/datafiles/release/xterm.tar.gz
    $ tar xf xterm.tar.gz
    $ cd xterm-392
    $ ./configure --enable-regis-graphics
    $ make
    $ sudo make install


Although *ReGIS, short for Remote Graphic Instruction Set*, we will not use an USART but
rather print directly to the screen with `(format ...)`. 



[^1]: http://bitsavers.trailing-edge.com/pdf/dec/terminal/vt340/EK-VT3XX-GP-001_VT330_VT340_Graphics_Programming_Mar87.pdf
[^2]: https://en.wikipedia.org/wiki/Digital_Equipment_Corporation






