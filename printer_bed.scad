// glass plate
#translate([0,100,2.5]) cylinder(r=100,h=2.5);

// aluminum extrusion
#difference()
{
    translate([-100,-10,-20]) cube([200,20,20]);
    translate([-100,-3,-6]) cube([200,6,6]);
    translate([-100,-5.5,-3]) cube([200,11,1.5]);
}

// M5-30 screw
#translate([0,0,-6]) union()
{
    translate([0,0,0]) cylinder(r=2.5,h=30);
    translate([0,0,25]) cylinder(r=4.25,h=5);
}

// bottom
difference()
{
    union()
    {
        //translate([-50,-10, 0]) cube([100,20,2]);

        translate([-54,-6, 0]) cube([4,12,2]);
        translate([-50,-6,0]) cylinder(r=4,h=2);
        translate([-50,6,0]) cylinder(r=4,h=2);

        translate([50,-6, 0]) cube([4,12,2]);
        translate([50,-6,0]) cylinder(r=4,h=2);
        translate([50,6,0]) cylinder(r=4,h=2);
    }
    
    difference()
    {
    }
}

// top
#translate([0,0,20]) difference()
{
    union()
    {
        //translate([-50,-10, 0]) cube([100,20,4]);

        translate([-54,-6, 0]) cube([4,12,4]);
        translate([-50,-6,0]) cylinder(r=6,h=4);
        translate([-50,6,0]) cylinder(r=6,h=4);

        translate([50,-6, 0]) cube([4,12,4]);
        translate([50,-6,0]) cylinder(r=6,h=4);
        translate([50,6,0]) cylinder(r=6,h=4);
    }
    
    translate() cube([]);
}
