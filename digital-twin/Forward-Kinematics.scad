module axis(position,rotation){
   translate(position) rotate(rotation){
   color("blue") rotate([0,0,0]) cylinder(20,1,1);
   color("red") rotate([-90,0,0]) cylinder(20,1,1);
   color("green") rotate([0,90,0]) cylinder(20,1,1);
   };
   };
axis([-80,-80,-20],[0,0,0]);

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
translate([0,5,0]) cube([50,10,50],center=true);
};

Base_size = [150,150,10];
A1_position = [0,0,50];
A2_position = [0,200,0];
A3_position = [0,200,55];
A4_position = [0,0,0];
A5_size = [40,40,50];
A6_size = [20,20,20];


A1_limit = [0,360];
A2_limit = [0,180];
A3_limit = [0,180];
A4_limit = [0,369];
A5_limit = [0,180];
A6_limit = [0,360];

A1_current = 0;
A2_current = 0;
A3_current = 0;
A4_current = 0;
A5_current = 0;
A6_current = 0;

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


rotate([0,0,0]){axis_1(); 
translate(A1_position) rotate([0,0,0]){axis_2();
translate(A2_position) rotate([0,0,0]){axis_3();
translate(A3_position) rotate([0,A4_current,0]){axis_4();};  
    };};};


target(target_position,target_rotation);

// HELLO OPENSCAD
