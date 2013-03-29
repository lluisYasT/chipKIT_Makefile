Simple Makefile for chipKIT sketches.

It will compile any sketch which uses the core library.

The sketch needs to:
  1- Have the following line at the start (MPIDE adds this while compiling):
    ```c
    #include <WProgram.h>
    ```
  2- Have .cpp extension instead of .pde
