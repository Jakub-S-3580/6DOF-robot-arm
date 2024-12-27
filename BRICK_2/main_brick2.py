#!/usr/bin/env python3


import os
import sys
import time
from ev3dev2.motor import LargeMotor, MediumMotor, OUTPUT_A, OUTPUT_B, OUTPUT_C, OUTPUT_D
from general_functions import *

# state constants
ON = True
OFF = False




A3 = LargeMotor(OUTPUT_A)
A4 = MediumMotor(OUTPUT_B)
A5 = MediumMotor(OUTPUT_C)
A6 = MediumMotor(OUTPUT_D)

A3.on_for_seconds(100,3)
