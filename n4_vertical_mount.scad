difference()
{
    translate([0,0,0]) cube([30,137,8]);
    translate([4,4,0]) cube([22,20,4]);
    translate([4,4+20+4,0]) cube([22,20,4]);
    translate([4,4+20+4+20+4,0]) cube([22,8,4]);
    translate([4,4+20+4+20+4+8+4+8+4,0]) cube([22,9,4]);
    translate([4,137-20-4-20-4,0]) cube([22,20,4]);
    translate([4,137-20-4,0]) cube([22,20,4]);
}

translate([0,60,-4]) cube([30,4,4]);
translate([0,72,-4]) cube([30,4,4]);

translate([0,-8,0]) cube([8,8,11.5+8+4]);
translate([22,-8,0]) cube([8,8,11.5+8+4]);

translate([8,-8,0]) cube([14,8,8]);
translate([8,-8,11.5+8]) cube([14,8,4]);

translate([0,0,11.5+8]) cube([30,8,4]);

translate([0,137,0]) cube([30,4,11.5+8+4]);
translate([0,135,11.5+8+2]) cube([30,2,2]);