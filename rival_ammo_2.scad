DIAMETER = 0.9 * 25.4; // 0.9 in
RADIUS = DIAMETER / 2;

// A
difference()
{
    scale(1.176*RADIUS) import("rival_ammo.stl");
    translate([-50, -50, -DIAMETER]) cube([100, 100, DIAMETER]);
    translate([4, -0.5, -0.5]) cube([1, 1, 1]);
}

// B
translate([3 * RADIUS, 0, 0])
rotate([0, 180, 0])
difference()
{
    scale(1.176*RADIUS) import("rival_ammo.stl");
    translate([-50, -50, 0]) cube([100, 100, DIAMETER]);
    translate([4, -0.5, -0.5]) cube([1, 1, 1]);
}