include <_config.scad>;

radius = 15;
gcd_width = 44;
gcd_length = 45;
layer_height = 0.2;

for (x = [radius:gcd_width:bed_width - radius]){
     for (y = [radius:gcd_length:bed_length - radius]){
          translate([x,y,0]) cylinder(layer_height, r = radius);
     }

}

%square([bed_width, bed_length]);
