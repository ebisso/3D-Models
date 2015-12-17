translate([35,17.5,0]) scale([10,10,10]) import("n4_support.stl");

translate([3,0,1]) cube([64,4,8]);
translate([19,4,7]) cube([34,2,2]);

translate([0,0,9])
{
    translate([-1,0,0]) cube([22,6,8]);
    translate([21+30,0,0]) cube([22,6,8]);
        
    translate([21+4+0.2,0,0]) cube([22-0.4,4-0.2,6-0.2]);

    translate([-5,0,0]) cube([4,8,8+13+4]);
    translate([73,0,0]) cube([4,8,8+13+4]);

    translate([-1,0,8+13]) cube([5,8,4]);
    translate([73-5,0,8+13]) cube([5,8,4]);
}