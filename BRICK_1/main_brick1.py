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

A1 = LargeMotor()
A2 = LargeMotor()
Pneumatics = LargeMotor()
A1.on_for_seconds(100,3)
A2.on_for_seconds(100,3)
Pneumatics.on_for_seconds(100,3)