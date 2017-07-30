CGo by Example for Windows
==========================
@author: Robert A. McLeod

Forked from: Alexey Palazhchenko
https://github.com/AlekSi/cgo-by-example

To run cgo on a Windows platform you will need a MinGW compiler.  I strongly 
advise TDM-GCC-64, as it is cross-compliant for both `GOARCH=amd64` and 
`GOARCH=386`.  Here I will use this example 

http://tdm-gcc.tdragon.net/

Compiling a cgo program requires a few environment variables:

    set GOOS=windows
    set GOARCH=amd64
    set CGO_ENABLED=1

Unfortunately if you're working with `mingw32-make`, it doesn't seem to support 
`.ONESHELL` and if you have Git for Windows one-line solutions are also very
fragile. The best solution I found to set these variables is batch files that 
wrap `mingw32-make`.

Usage
=====

    amd64.bat

    main.exe

    main2.exe

    mingw32-make clean & 386.bat

    main.exe

    main2.exe



