/*********************************************************************
 *
 *      PIC32MX Blinky LEDs Example
 *
 *********************************************************************
 * FileName:        blinky_leds.c
 * Dependencies:    plib.h
 *
 * Processor:       PIC32MX
 *
 * Complier:        MPLAB C32
 *                  MPLAB IDE
 * Company:         Microchip Technology Inc.
 *
 * Software License Agreement
 *
 * The software supplied herewith by Microchip Technology Incorporated
 * (the �Company�) for its PIC32MX Microcontroller is intended
 * and supplied to you, the Company�s customer, for use solely and
 * exclusively on Microchip Microcontroller products.
 * The software is owned by the Company and/or its supplier, and is
 * protected under applicable copyright laws. All rights are reserved.
 * Any use in violation of the foregoing restrictions may subject the
 * user to criminal sanctions under applicable laws, as well as to
 * civil liability for the breach of the terms and conditions of this
 * license.
 *
 * THIS SOFTWARE IS PROVIDED IN AN �AS IS� CONDITION. NO WARRANTIES,
 * WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
 * TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 * PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
 * IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
 * CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *********************************************************************
 * $Id: blinky_leds.c 9390 2008-06-16 23:43:04Z rajbhartin $
 *********************************************************************
 * The purpose of this example code is to demonstrate the PIC32MX
 * peripheral library macros and functions supporting the IOPORT
 * module and its various features.
 *
 * Platform: Explorer-16 with PIC32MX PIM
 * 
 * Features demonstrated:
 *    - Port pin configurations
 *    - Output Pin toggle
 *
 * Description:
 *      This program blinks the lower four LEDs on the Explorer-16
 *      demo board.
 *
 * Notes:
 *    - PIC32MX 2xx PIMS are unconnected to the Explorer-16 LEDs.
 *      They must be soldered to the test points on top of the PIM
 *      for proper functionality. The README file contains a list
 *      of the connections that need to be made.
 ********************************************************************/
#include <plib.h>


int main(void)
{
    SYSTEMConfig(80000000L, SYS_CFG_WAIT_STATES | SYS_CFG_PCACHE);

    uint32_t i;

    // Clear PORTA bits so there are no unexpected flashes when setting
    // them to output in the next step
    mPORTGClearBits(BIT_12);

    // Make lower four bits of PORTA as output
    mPORTGSetPinsDigitalOut(BIT_12);

    // Now blink LEDs ON/OFF forever.
    while (1)
    {
        mPORTGToggleBits(BIT_12);

        // Insert some delay
        i = 8000000UL;
        while (i--);
    }
}
