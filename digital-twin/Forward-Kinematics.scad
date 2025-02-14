module axis(position,rotation){
   translate(position) rotate(rotation){
   color("blue") rotate([0,0,0]) cylinder(20,1,1);
   color("red") rotate([-90,0,0]) cylinder(20,1,1);
   color("green") rotate([0,90,0]) cylinder(20,1,1);
   };
   };
axis([-70,-70,-20],[0,0,0]);

Base_size = [100,100,10];
A1_size = [40,40,10];
A2_size = [40,40,200];
A3_size = [40,40,200];
A4_size = [50,50,20];
A5_size = [40,40,50];
A6_size = [20,20,20];


A1_limit = [0,360];
A2_limit = [0,180];
A3_limit = [0,180];
A4_limit = [0,369];
A5_limit = [0,180];
A6_limit = [0,360];

A1_current = 45;
A2_current =40;
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
/*
{
    translate([-50,-50,-10]) cube([100,100,10]);


    module axis_3(position,rotation){
        axis_len = l2;
        axis_wid = 40;
        axis_hgt = 40;
        translate([position.x+axis_len,position.y-axis_wid/2,position.z-axis_hgt/2]) rotate(rotation){
        cube([axis_len,axis_wid,axis_hgt]);
        };
    };

    module axis_2(position,rotation){
        axis_len = l1;
        axis_wid = 40;
        axis_hgt = 40;
        rotate(rotation) {
            translate([position.x,position.y-axis_wid/2,position.z]) cube([axis_len,axis_wid,axis_hgt]);
            axis_3([0,0,axis_hgt/2],[0,A3_current,0]);
        };
    };

    module axis_1(position,rotation){
        axis_len = 30;
        axis_wid = 30;
        axis_hgt = 10;
        rotate(rotation) {
            translate([position.x,position.y,position.z+axis_hgt/2]) cube([axis_len,axis_wid,axis_hgt],center = true);
            axis_2([position.x,position.y,position.z+axis_hgt],[rotation.x,-A2_current,rotation.y]);
        };
    };
}
*/

module target(position,rotation){
    axis(position,rotation);
};

module robot(position,rotation){
    translate(position) rotate(rotation){  
    translate([0,0,-Base_size.z/2]) cube(Base_size,center = true);
    translate([0,0,A1_size.z/2]) rotate([0,0,A1_current]){
            cube(A1_size,center = true)
            translate([0,0,A1_size.z]) rotate([0,-A2_current,0]){
            translate([0,-A2_size.y/2,A2_size.x/2]) cube(A2_size);
        };
        };
    };
};


//axis_1(initial_position,[0,0,A1_current]);
target(target_position,target_rotation);
robot([0,0,0],[0,0,0]);
