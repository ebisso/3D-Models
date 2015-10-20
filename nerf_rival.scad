DIAMETER = 0.9 * 25.4; // 0.9 in
RADIUS = DIAMETER / 2;

translate([0, 0, RADIUS]) sphere(r = RADIUS);

translate([50, 0, 0])
difference()
{
    translate([-(RADIUS + 5), -(RADIUS + 5), 0]) cube([2 * (RADIUS + 5), 2 * (RADIUS + 5), RADIUS + 5]);
    translate([0, 0, RADIUS + 5]) sphere(r = RADIUS);
    translate([-(RADIUS + 2), -(RADIUS + 2), RADIUS]) cylinder(r = 2, h = 5);
    translate([(RADIUS + 2), (RADIUS + 2), RADIUS]) cylinder(r = 2, h = 5);
}

translate([100, 0, 0])
difference()
{
    union()
    {
        translate([-(RADIUS + 5), -(RADIUS + 5), 0]) cube([2 * (RADIUS + 5), 2 * (RADIUS + 5), RADIUS + 5]);
        translate([-(RADIUS + 2), (RADIUS + 2), RADIUS + 5]) cylinder(r = 2, h = 5);
        translate([(RADIUS + 2), -(RADIUS + 2), RADIUS + 5]) cylinder(r = 2, h = 5);
    }
    translate([0, 0, RADIUS + 5]) sphere(r = RADIUS);
    translate([0, 0, 0]) cylinder(r = 1, h = RADIUS + 5);
    
    translate([-8, -11, RADIUS + 1])
    rotate([-90, 0, 45])
    union()
    {
        translate([-4, 0, 0]) cube([2, RADIUS + 5, 4]);
        translate([0, -4, 0]) cube([RADIUS + 5, 2, 4]);
        difference()
        {
            cylinder(r = 4, h = 4);
            cylinder(r = 2, h = 4);
            translate([-4, 0, 0]) cube([8, 4, 4]);
            translate([0, -4, 0])cube([4, 8, 4]);
        }
    }
}

