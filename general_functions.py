
import os
import sys
import time
from ev3dev2.motor import LargeMotor, MediumMotor, OUTPUT_A, OUTPUT_B, OUTPUT_C, OUTPUT_D

def debug_print(*args, **kwargs):
    '''Print debug messages to stderr.

    This shows up in the output panel in VS Code.
    '''
    print(*args, **kwargs, file=sys.stderr)
def run(motor, *args, **kwargs):
    motor.on_for_seconds(*args, **kwargs)
    if motor.is_stalled == True:
        motor.stop()
        debug_print(str(motor) + ' has stalled - restarting')
        run(motor,*args, **kwargs)