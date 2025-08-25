#!/usr/bin/env python3


import os
import sys
import time
from ev3dev2.motor import LargeMotor, MediumMotor, OUTPUT_A, OUTPUT_B, OUTPUT_C, OUTPUT_D
from ev3dev2.button import Button
sys.path.insert(1, '../')
from general_functions import *





A3 = LargeMotor(OUTPUT_A)
A4 = MediumMotor(OUTPUT_B)
A5 = MediumMotor(OUTPUT_C)
A6 = MediumMotor(OUTPUT_D)
buttons = Button()

option = True
def on_enter():
    debug_print('run')
    if option == True:
        option = False
    elif option == False:
        option = True

for i in range(999999999999999999999999):
    option = True
    pressed = buttons.buttons_pressed
    for i in pressed:
        if i == 'left' and option == True:
            A3.on_for_rotations(100,0.25)
        if i == 'right' and option == True:
            A3.on_for_rotations(100,-0.25)

        if i == 'up' and option == True:
            A4.on_for_rotations(100,0.25)
        if i == 'down' and option == True:
            A4.on_for_rotations(100,-0.25)

        if i == 'left' and option == False:
            A5.on_for_rotations(100,0.25)
        if i == 'right' and option == False:
            A5.on_for_rotations(100,-0.25)

        if i == 'up' and option == False:
            A6.on_for_rotations(100,0.25)
        if i == 'down' and option == False:
            A6.on_for_rotations(100,-0.25)