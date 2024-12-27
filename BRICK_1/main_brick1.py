#!/usr/bin/env python3


import os
import sys
import time
from ev3dev2.motor import LargeMotor, MediumMotor, OUTPUT_A, OUTPUT_B, OUTPUT_C, OUTPUT_D
sys.path.insert(1, '../')
from general_functions import *

# state constants
ON = True
OFF = False

A1 = LargeMotor(OUTPUT_A)
A2 = LargeMotor(OUTPUT_C)
Pneumatics = LargeMotor(OUTPUT_D)

run(A1,100,5)
A2.on_for_seconds(-100,3)
Pneumatics.on_for_seconds(100,3)