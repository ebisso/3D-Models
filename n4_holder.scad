//translate([0,-3.25,1.5]) cube([137, 11.5, 72]);

union()
{
difference()
{
    translate([55, 29.5, 15]) rotate([90,0,6]) scale([10,10,10]) import("c:\\users\\eric\\desktop\\carholder_part2.stl");
    translate([-200, 0, -100]) cube([400, 100, 200]);
}

difference()
{
    translate([55, 32.75, 15]) rotate([90,0,6]) scale([10,10,10]) import("c:\\users\\eric\\desktop\\carholder_part2.stl");
    translate([-200, -100, -100]) cube([400, 100, 200]);
}
}