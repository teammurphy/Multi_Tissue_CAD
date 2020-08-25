// Multi_Tissue_Recording Base v1
// Jack F. Murphy <me@jackmurphy.nyc>
// https://github.com/teammurphy/Multi_Tissue_CAD

// Smoothness
$fn = 30;

// Stage Dimensions
stage_len=210;
stage_width=170;
stage_thickness=10;

// Hole Dimensions
rod=8;


difference() {
  translate([0, -10, 0])  
    cube([stage_len, stage_width, stage_thickness], center=true);

  // Rod Holes
  translate([85, 60, 3])
    cylinder(d=rod, h=stage_thickness, center=true);
  translate([-85, 60, 3])
    cylinder(d=rod, h=stage_thickness, center=true);
    
  translate([-20, -59, 3]){
    cube([43, 43, stage_thickness], center=true);
  }
}

// Creates Insert for Pi to Stand Against
translate([60, -95, 5])
  cube([10, 110, 60]);

    