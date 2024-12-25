 #!/usr/bin/env python3
from ev3dev2 import OUTPUT_A,OUTPUT_B,OUTPUT_C,OUTPUT_D, LargeMotor

A1 = LargeMotor(OUTPUT_A)
A1.on_for_seconds(100,5,1)
