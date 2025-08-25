function rotX(ang,obj)=
    let (mat = [
        [1,0       ,0        ],
        [0,cos(ang),-sin(ang)],
        [0,sin(ang),cos(ang) ]
    ])
    mat*obj;

function rotY(ang,obj)=
    let (mat = [
        [cos(ang) ,0 ,sin(ang)],
        [0        ,1 ,0       ],
        [-sin(ang),0 ,cos(ang)]
    ])
    mat*obj;

function rotX(ang,obj)=
    let (mat = [
        [cos(ang),-sin(ang),0],
        [sin(ang),cos(ang),0 ],
        [0       ,0       ,1 ]
    ])
    mat*obj;

axis([-80,-80,-20],[0,0,0]);

function zrot(ang) = [
        [cos(ang),-sin(ang),0],
        [sin(ang),cos(ang),0 ],
        [0       ,0       ,1 ]
];
function yrot(ang) = [
        [cos(ang) ,0 ,sin(ang)],
        [0        ,1 ,0       ],
        [-sin(ang),0 ,cos(ang)]
];
function xrot(ang) = [
        [1,0       ,0        ],
        [0,cos(ang),-sin(ang)],
        [0,sin(ang),cos(ang) ]
];

module axis(position,rotation){
   translate(position) rotate(rotation){
   color("blue") rotate([0,0,0]) cylinder(20,1,1);
   color("green") rotate([-90,0,0]) {cylinder(20,1,1); translate([0,0,20]) sphere(2);};
   color("red") rotate([0,90,0]) cylinder(20,1,1);
   };
};
module axis_1(){
        translate([0,0,10])cube([100,100,20],center = true);
        translate([0,0,45])cube([40,40,50],center = true);
};
module axis_2(){
        union(){
        translate([22.5,5,0])cube([5,50,40],center = true);
        translate([-22.5,5,0])cube([5,50,40],center = true);
        translate([0,100,0])cube([50,140,40],center = true);
        translate([0,195,0])cube([40,50,40],center = true);
        };
};
module axis_3(){
    union(){
    translate([22.5,5,5])cube([5,50,50],center = true);
    translate([-22.5,5,5])cube([5,50,50],center = true);
    translate([0,87.5,55])cube([50,225,50],center = true);
    };
};
module axis_4(){
    union(){
    translate([0,5,0]) cube([51,10,51],center=true);
    translate([-22.5,35,0]) cube([5,50,50],center = true);
    translate([22.5,35,0]) cube([5,50,50],center = true);
    };
};
module axis_5(){
    translate([0,20,0])cube([40,50,50],center = true);
};
module axis_6(){
    translate([0,5,0]) cube([50,10,50],center = true);
    translate([0,10,0]) rotate([-90,0,0]) cylinder(10,20,20);
    translate([-2.5,20,0]) cube([5,3,20]);
    translate([0,30,0]) cube([5,20,5],center = true);
    translate([0,40,0]) axis([0,0,0],[0,0,0]);
};

Base_size = [150,150,10];
A1_position = [0,0,50];
A2_position = [0,200,0];
A3_position = [0,200,55];
A4_position = [0,35,0];
A5_position = [0,45,0];
A6_position = [0,40,0];


A1_limit = [0,360];
A2_limit = [0,180];
A3_limit = [0,180];
A4_limit = [0,369];
A5_limit = [0,180];
A6_limit = [0,360];

A1_current = 5;
A2_current = 140;
A3_current = 100;
A4_current = 30;
A5_current = 70;
A6_current = 10;

initial_position = [0,0,0];
target_position = [150,150,150];
target_rotation = [0,0,0];

target_x = target_position[0];
target_y = target_position[1];
target_z = target_position[2];
target_xrot = target_rotation[0];
target_yrot = target_rotation[1];
target_zrot = target_rotation[2];


module target(position,rotation){
    axis(position,rotation);
};

rotate([0,0,A1_current]){axis_1(); 
translate(A1_position) rotate([A2_current,0,0]){axis_2();
translate(A2_position) rotate([-A3_current,0,0]){axis_3();
translate(A3_position) rotate([0,A4_current,0]){axis_4();
translate(A4_position) rotate([-(A5_current-90),0,0]){axis_5();
translate(A5_position) rotate([0,A6_current,0]){axis_6();
};
};
};  
};
};
};

end_pos =   zrot(A1_current)*(A1_position+
            xrot(A2_current)*(A2_position+
            xrot(-A3_current)*(A3_position+
            yrot(A4_current)*(A4_position+
            xrot(-(A5_current-90))*(A5_position+
            yrot(A6_current)*(A6_position)
)))));

end_rot =   zrot(A1_current)*
            xrot(A2_current)*
            xrot(-A3_current)*
            yrot(A4_current)*
            xrot(-(A5_current-90))*
            yrot(A6_current)*
            [[1,0,0],
             [0,1,0],
             [0,0,1]];


echo(end_pos);
echo(end_rot[0],"\n   ",end_rot[1],"\n   ",end_rot[2]);

target(target_position,target_rotation);

i = end_rot[2][2];
g = end_rot[2][0];
d = end_rot[1][0];
echo(i,g,d);


beta = asin(-g);
alpha = acos(i/cos(beta));
gamma = asin(d/cos(beta));
echo(alpha,beta,gamma);
rot_abs = [alpha,beta,gamma];

axis(end_pos+[10,10,10],rot_abs);



