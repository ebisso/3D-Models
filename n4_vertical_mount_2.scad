translate([35,17.5,0]) scale([10,10,10]) import("n4_support.stl");

translate([3,0,1]) cube([64,8,8]);

translate([0,0,9])
{
translate([0,0,0])cube([21,8,8]);
translate([21+30,0,0]) cube([21,8,8]);

translate([-4,0,0]) cube([4,8,8+11.5+4]);
translate([72,0,0]) cube([4,8,8+11.5+4]);

translate([0,0,8+11.5]) cube([4,8,4]);
translate([72-4,0,8+11.5]) cube([4,8,4]);
}