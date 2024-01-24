
# Table of Contents

1.  [GNU make](#org12897ad)
    1.  [Overview of make](#org0907c75)
        1.  [How to Read This Manual](#orga16269f)
        2.  [Problems and Bugs](#org449526d)
    2.  [An Introduction to Makefiles](#org185ac40)


<a id="org12897ad"></a>

# GNU make

This file documents the GNU make utility, which determines automatically which pieces of a large program need to be recompiled, and issues the commands to recompile them.

This is Edition 0.77, last updated 26 February 2023, of The GNU Make Manual, for GNU make version 4.4.1.


<a id="org0907c75"></a>

## Overview of make

The make utility automatically determines which pieces of a large program need to be recompiled, and issues commands to recompile them. This manual describes GNU make, which was implemented by Richard Stallman and Roland McGrath. Development since Version 3.76 has been handled by Paul D. Smith.


<a id="orga16269f"></a>

### How to Read This Manual

If you are new to make, or are looking for a general introduction, read the first few sections of each chapter, skipping the later sections. In each chapter, the first few sections contain introductory or general information and the later sections contain specialized or technical information. The exception is the second chapter, An Introduction to Makefiles, all of which is introductory.


<a id="org449526d"></a>

### Problems and Bugs

If you have problems with GNU make or think you’ve found a bug, please report it to the developers; we cannot promise to do anything but we might well want to fix it.


<a id="org185ac40"></a>

## An Introduction to Makefiles

You need a file called a makefile to tell make what to do. Most often, the makefile tells make how to compile and link a program.

