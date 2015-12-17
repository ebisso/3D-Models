// glass plate
// translate([0,100,2.5]) cylinder(r=100,h=2.5);

// aluminum extrusion
difference()
{
    translate([-100,-10,-20]) cube([200,20,20]);
    translate([-100,-3,-6]) cube([200,6,6]);
    translate([-100,-5.5,-3]) cube([200,11,1.5]);
}

// M5-30 screw
translate([50,0,-6]) union()
{
    translate([0,0,0]) cylinder(r=2.5,h=30);
    translate([0,0,25]) cylinder(r=4.25,h=5);
}

// bottom mount
/*difference()
{
    union()
    {
        translate([45,-5, 0]) cube([10,10,4]);
        translate([45,-3, -1.5]) cube([10,6,1.5]);
        
        translate([50,-5,0]) cylinder(r=5,h=4);
        translate([50,5,0]) cylinder(r=5,h=4);
        //translate([50,-6,0]) cylinder(r=4,h=4);
        //translate([50,6,0]) cylinder(r=4,h=4);
    }
    
  // M5-30 screw hole
  translate([50,0,-6]) union()
  {
      translate([0,0,0]) cylinder(r=2.5,h=30);
      translate([0,0,25]) cylinder(r=4.25,h=5);
  }
}*/


translate([0,100,2.5]) cylinder(r=100,h=2.5);

// top
difference()
{
    union()
    {
        translate([50,-10, 0]) cylinder(r=5, h=18);
        translate([50,10, 0]) cylinder(r=5, h=18);
        translate([45,-10,0]) cube([10,20,18]);
        
        translate([50,-10, 0]) cylinder(r=5, h=8);
        translate([50,10, 0]) cylinder(r=5, h=8);
        translate([50,-10, 0]) cylinder(r=5, h=8);
        translate([50,10, 0]) cylinder(r=5, h=8);
        translate([40,-10,0]) cube([20,20,8]);
    }
    
    translate([47.5,]) cube([]);
    translate([]) cube([]);
}
