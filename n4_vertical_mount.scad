difference()
{
    translate([0,0,0]) cube([30,90,8]);
    translate([2,2,0]) cube([26,20,6]);
    translate([2,2+20+2,0]) cube([26,20,6]);
    translate([2,2+20+2+20+2,0]) cube([26,15,6]);
    translate([3,2+20+2+20+2+15+2,0]) cube([24,4,6]);
    translate([2,2+20+2+20+2+15+2+4+2,0]) cube([26,19,6]);
}

translate([0,-8,0]) cube([4,8,13+8+3]);
translate([26,-8,0]) cube([4,8,13+8+3]);

translate([0,0,13+8]) cube([30,8,3]);
