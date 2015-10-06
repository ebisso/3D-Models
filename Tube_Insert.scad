// Primary parameters
tube_length = 80;
tube_width = 40;
tube_wall_thickness = 1;

// The rest
sole_thickness = 4;
sole_corner_radius = 1;
rib_count = 4;
rib_offset = 3;
rib_width = 5;
rib_min_thickness = 0.5;
rib_max_thickness = 2;
rib_wall_thickness = 2;

sole_width = tube_width;
sole_length = tube_length;
rib_height = rib_offset + rib_max_thickness;

// Sole
hull() {
    translate([sole_corner_radius, sole_corner_radius, 0]) 
    cube([sole_length - (2 * sole_corner_radius), sole_width - (2 * sole_corner_radius), sole_thickness]);
    for (i = [[sole_corner_radius, sole_corner_radius, sole_corner_radius],
             [sole_length - sole_corner_radius, sole_corner_radius, sole_corner_radius],
             [sole_corner_radius, sole_width - sole_corner_radius, sole_corner_radius],
             [sole_length - sole_corner_radius, sole_width - sole_corner_radius, sole_corner_radius]]) {
        translate(i)
        cylinder(sole_thickness - sole_corner_radius, sole_corner_radius, $fn = 16);
        translate(i)
        sphere(sole_corner_radius, $fn = 16);
     }
}

// Insert
module rib() {
    difference()
    {
        union() {
            translate([tube_wall_thickness + rib_width, tube_wall_thickness + rib_width, 0])
            cube([sole_length - (2 * tube_wall_thickness) - (2 * rib_width), sole_width - (2 * tube_wall_thickness) - (2 * rib_width), rib_offset]);
        
            hull() {
                translate([tube_wall_thickness + (2 * rib_width), tube_wall_thickness, rib_offset])
                cube([sole_length - (2 * tube_wall_thickness) - (4 * rib_width), sole_width - (2 * tube_wall_thickness), rib_min_thickness]);
                translate([tube_wall_thickness, tube_wall_thickness + (2 * rib_width), rib_offset])
                cube([sole_length - (2 * tube_wall_thickness), sole_width - (2 * tube_wall_thickness)  - (4 * rib_width), rib_min_thickness]);
                translate([tube_wall_thickness + rib_width, tube_wall_thickness + rib_width, rib_offset])
                cube([sole_length - (2 * tube_wall_thickness) - (2 * rib_width), sole_width - (2 * tube_wall_thickness) - (2 * rib_width), rib_max_thickness]);
            }
        }
        
        translate([tube_wall_thickness + rib_width + rib_wall_thickness, tube_wall_thickness + rib_width + rib_wall_thickness, 0]) 
        cube([sole_length - (2 * tube_wall_thickness) - (2 * rib_width) - (2 * rib_wall_thickness), sole_width - (2 * tube_wall_thickness) - (2 * rib_width) - (2 * rib_wall_thickness), rib_height]);
    }
}

for (i = [0:rib_count - 1])
{
    translate([0,0,sole_thickness + (i * rib_height)])
    rib();
}