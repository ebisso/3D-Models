difference()
{
    translate([0,0,0]) cube([30,90,8]);
    translate([4,4,0]) cube([22,20,6]);
    translate([4,4+20+4,0]) cube([22,20,6]);
    translate([4,4+20+4+20+4,0]) cube([22,8,6]);
    translate([4,4+20+4+20+4+8+4,0]) cube([22,4,6]);
    translate([4,4+20+4+20+4+8+4+4+4,0]) cube([22,14,6]);
}

translate([0,-8,0]) cube([8,8,12+8+4]);
translate([22,-8,0]) cube([8,8,12+8+4]);

translate([8,-8,0]) cube([14,8,8]);
translate([8,-8,12+8]) cube([14,8,4]);

translate([0,0,12+8]) cube([30,8,4]);
