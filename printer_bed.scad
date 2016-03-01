// glass plate
module plate()
{
    translate([0,108,17]) cylinder(r=100,h=2.5);
}

// aluminum extrusion
module extrusion()
{
    difference()
    {
        translate([-100,-10,-20]) cube([200,20,20]);
        translate([-100,-3,-6]) cube([200,6,6]);
        translate([-100,-5.5,-3]) cube([200,11,1.5]);
    }
}

// M5-30 screw
module screw()
{
    translate([0,0,-6]) union()
    {
        translate([0,0,0]) cylinder(r=2.5,h=30);
        translate([0,0,25]) cylinder(r=4.25,h=5);
    }
}

// Lower bracket
module lower_bracket()
{
    difference()
    {
        union()
        {
            translate([-12,-10,0]) cube([24,20,3]);
            translate([-12,-2,-3]) cube ([4,4,3]);
            translate([8,-2,-3]) cube ([4,4,3]);
            translate([0,0,10]) cylinder(r=8,h=3);
            
            intersection()
            {
                union()
                {
                    translate([-12,-1,3]) cube([24,2,7]);
                    translate([-1,-10,3]) cube([2,20,7]);
                }
                translate([0,0,3]) cylinder(r=8,h=7);       
            }
        }
            
        cylinder(r=3,h=13);
    }
}


// Upper bracket
module upper_bracket()
{
    difference()
    {
        union()
        {
            hull()
            {
                translate([0,0,13]) cylinder(r=8,h=3.5);
                translate([0,5,13]) cylinder(r=8,h=3.5);
            }
            translate([0,0,16.5]) cylinder(r=6, h=2.5);
            translate([0,0,19]) cylinder(r1=6, r2=8, h=2);
            translate([0,0,21]) cylinder(r=8,h=1);
        }
        translate([0,0,13]) cylinder(r=3,h=8);
        translate([0,0,19]) cylinder(r=5, h=3);
    }
}

//lower_bracket();
upper_bracket();