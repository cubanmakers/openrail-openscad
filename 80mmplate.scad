// OpenRail 80mm gantry plate
// drawn by jdausilio/zeke7237
// really not positive on these dimensions, docs don't seem to provide details

$fn=50;
// holes
large=7.1;
small=5.2;
width=140;
length=160;
radius=10;
thickness=2.9;	// docs say 3.2 but mine measure 2.9

module hole(diameter) {
	cylinder(r=diameter/2,h=5,center=true);
}

module 80mmplate() {
	difference() {
		// the plate
		minkowski() {
			cube([width-2*radius,length-2*radius,thickness/2],center=true);
			cylinder(r=radius, h=thickness/2,center=true);
		}
		// the holes
		hole(small);
		translate([10,0,0])hole(small);
		translate([-10,0,0])hole(small);
		translate([0,10,0])hole(small);
		translate([0,-10,0])hole(small);
		translate([0,30,0])hole(small);
		translate([0,-30,0])hole(small);
		translate([0,60,0])hole(small);
		translate([0,-60,0])hole(small);
		translate([10,40,0])hole(small);
		translate([-10,40,0])hole(small);
		translate([10,60,0])hole(small);
		translate([-10,60,0])hole(small);
		translate([10,-40,0])hole(small);
		translate([-10,-40,0])hole(small);
		translate([10,-60,0])hole(small);
		translate([-10,-60,0])hole(small);
		translate([30,40,0])hole(small);
		translate([-30,40,0])hole(small);
		translate([30,-40,0])hole(small);
		translate([-30,-40,0])hole(small);
		translate([22.5,60,0])hole(small);
		translate([-22.5,60,0])hole(large);
		translate([22.5,-60,0])hole(small);
		translate([-22.5,-60,0])hole(large);
		translate([32.5,60,0])hole(small);
		translate([-32.5,60,0])hole(large);
		translate([32.5,-60,0])hole(small);
		translate([-32.5,-60,0])hole(large);
		translate([42.5,60,0])hole(small);
		translate([-42.5,60,0])hole(large);
		translate([42.5,-60,0])hole(small);
		translate([-42.5,-60,0])hole(large);
		translate([52.5,60,0])hole(small);
		translate([-52.5,60,0])hole(large);
		translate([52.5,-60,0])hole(small);
		translate([-52.5,-60,0])hole(large);
		translate([40,30,0])hole(small);
		translate([-40,30,0])hole(small);
		translate([40,-30,0])hole(small);
		translate([-40,-30,0])hole(small);
		translate([52.5,0,0])hole(small);
		translate([-52.5,0,0])hole(large);
		translate([52.5,0,0])hole(small);
		translate([-52.5,0,0])hole(large);
		translate([52.5,35,0])hole(small);
		translate([-52.5,35,0])hole(large);
		translate([52.5,-35,0])hole(small);
		translate([-52.5,-35,0])hole(large);
		translate([55,10,0])hole(small);
		translate([55,-10,0])hole(small);
		translate([-55,10,0])hole(small);
		translate([-55,-10,0])hole(small);
		translate([40,10,0])hole(small);
		translate([40,-10,0])hole(small);
		translate([-40,10,0])hole(small);
		translate([-40,-10,0])hole(small);
		translate([30,0,0])hole(small);
		translate([-30,0,0])hole(small);
	}
}

80mmplate();