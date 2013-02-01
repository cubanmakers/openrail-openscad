// OpenRail 40mm gantry plate
// drawn by jdausilio/zeke7237
// really not positive on these dimensions, docs don't seem to provide details

$fn=50;
// holes
large=7.1;
small=5.2;
width=100;
length=120;
radius=10;
thickness=2.9;	// docs say 3.2 but mine measure 2.9

module hole(diameter) {
	cylinder(r=diameter/2,h=5,center=true);
}

module 20mmplate() {
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
		translate([32.5,0,0])hole(small);
		translate([-32.5,0,0])hole(large);
		translate([20,10,0])hole(small);
		translate([40,10,0])hole(small);
		translate([-20,10,0])hole(small);
		translate([-40,10,0])hole(small);
		translate([20,-10,0])hole(small);
		translate([40,-10,0])hole(small);
		translate([-20,-10,0])hole(small);
		translate([-40,-10,0])hole(small);
		translate([10,20,0])hole(small);
		translate([-10,20,0])hole(small);
		translate([10,30,0])hole(small);
		translate([-10,30,0])hole(small);
		translate([10,-20,0])hole(small);
		translate([-10,-20,0])hole(small);
		translate([10,-30,0])hole(small);
		translate([-10,-30,0])hole(small);
		translate([10,42.5,0])hole(small);
		translate([-10,42.5,0])hole(small);
		translate([0,42.5,0])hole(small);
		translate([22.5,42.5,0])hole(small);
		translate([32.5,42.5,0])hole(small);
		translate([-22.5,42.5,0])hole(large);
		translate([-32.5,42.5,0])hole(large);
		translate([10,-42.5,0])hole(small);
		translate([-10,-42.5,0])hole(small);
		translate([0,-42.5,0])hole(small);
		translate([22.5,-42.5,0])hole(small);
		translate([32.5,-42.5,0])hole(small);
		translate([-22.5,-42.5,0])hole(large);
		translate([-32.5,-42.5,0])hole(large);
	}
}

20mmplate();