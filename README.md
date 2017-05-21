Go Conditional Compilation
===========================

Golang is gaining a lot of traction at work so here is my basic demonstration of conditional compilation.

I wanted some functionality in Go common to Windows and Linux with different behavior and did not know how to achieve this. My assumption was that there would be some sort of preprocessor directive similar to C but after investigation found that Go uses build flags or filename convention.

The official Go documentation for build flags and conditional compilation is good but does not make the usage clear, see https://golang.org/pkg/go/build/

The best explaination I have read with regards to conditional compilation in Go is from Dave Cheney, see https://dave.cheney.net/2013/10/12/how-to-use-conditional-compilation-with-the-go-build-tool

Thank you Dave for a well written, easy to understand article.

This demo code has a greeting for a Go program compiled in Linux and one for Windows.

After compiling for our specific operating system we need to test our program; but wait, we need two operating systems. Not a problem, the easiest way (for me at least) is to use a Virtual Machine to fire up my operating systems of choice.

This demonstration will boot up a Windows and Linux (Ubuntu) virtual machine to test our code.

Requirements
------------
* VirtualBox, https://www.virtualbox.org/wiki/Downloads tested with 5.1.22
* Vagrant, https://www.vagrantup.com/downloads.html tested with 1.9.2

Usage
-----
* Download source code of this project from github

Open a command prompt in the folder where the Vagrantfile is, to run Windows and Linux VirtualBox and type
* vagrant up

To load a Windows 2012 box only type 
* vagrant up windows

To load a Linux box only type
* vagrant up ubuntu

Vagrant will boot the Virtual Machines and install Go.

The Windows machine will have the source code in C:\ScratchPad\Go\src

The Linux machine will have the source code in /opt/go/src

Login to the Virtual Machine, to do that:
* Windows, use the GUI, username is vagrant, password is vagrant
* Linux, type vagrant ssh, username is vagrant, password is vagrant.

Change directories to the Go source folder, type go build, run conditionalcompilation, you will see an operating specific message!

License and Authors
-------------------
Please see [LICENSE][licence]
Authors: Chris Sullivan

[licence]: https://github.com/chrisgit/go-conditionalcompilation/blob/master/LICENSE