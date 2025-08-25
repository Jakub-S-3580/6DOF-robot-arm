#!/usr/bin/env python3
import os
import sys
import time
from ev3dev2.motor import LargeMotor, MediumMotor, OUTPUT_A, OUTPUT_B, OUTPUT_C, OUTPUT_D, Motor
sys.path.insert(1, '../')
from general_functions import *


A1 = Motor('OUTPUT_1')
A2 = Motor('OUTPUT_2')
A3 = Motor('OUTPUT_3')
A4 = Motor('OUTPUT_4')
run(A1,-100,3)
run(A1,100,3)
run(A2,-100,3)
run(A2,100,3)