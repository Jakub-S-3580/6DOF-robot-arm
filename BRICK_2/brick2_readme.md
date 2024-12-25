this brick only recieves signals and acts on them.

main_brick2.py is button control and stuff, also decoding coords from brick1

recieve.py is the code recieving bit - it creates a connection to brick1 and accepts the data.

connected axis:
5 - wrist middle (range: 0<ang<360)>
6 - wrist end rotation (range: 0<ang<180)>
PNEUMATICS - the control of the pneumatics - 3 states: +ve, -ve, off