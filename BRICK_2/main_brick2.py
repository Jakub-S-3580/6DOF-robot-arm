#!/usr/bin/env python3


import os
import sys
import time
from ev3dev2.motor import LargeMotor, MediumMotor

# state constants
ON = True
OFF = False

def debug_print(*args, **kwargs):
    '''Print debug messages to stderr.

    This shows up in the output panel in VS Code.
    '''
    print(*args, **kwargs, file=sys.stderr)

A3 = LargeMotor()
A4 = MediumMotor()
A5 = MediumMotor()
A6 = MediumMotor()

A3.on_for_seconds(100,3)
A4.on_for_seconds(100,3)
A5.on_for_seconds(100,3)
A6.on_for_seconds(100,3)