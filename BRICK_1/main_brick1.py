#!/usr/bin/env python3


import os
import sys
import time
from ev3dev2 import LargeMotor, OUTPUT_A,OUTPUT_B,OUTPUT_C,OUTPUT_D

# state constants
ON = True
OFF = False

def debug_print(*args, **kwargs):
    '''Print debug messages to stderr.

    This shows up in the output panel in VS Code.
    '''
    print(*args, **kwargs, file=sys.stderr)

A1 = LargeMotor(OUTPUT_A)
A1.on_for_seconds(100,3)