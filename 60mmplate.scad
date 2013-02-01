// OpenRail 60mm gantry plate
// drawn by jdausilio/zeke7237
// really not positive on these dimensions, docs don't seem to provide details

$fn=50;
// holes
large=7.1;
small=5.2;
width=120;
length=140;
radius=10;
thickness=2.9;	// docs say 3.2 but mine measure 2.9

module hole(diameter) {
	cylinder(r=diameter/2,h=5,center=true);
}

module 60mmplate() {
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
		translate([20,0,0])hole(small);
		translate([-20,0,0])hole(small);
		translate([0,20,0])hole(small);
		translate([0,-20,0])hole(small);
		translate([30,0,0])hole(small);
		translate([-30,0,0])hole(small);
		translate([0,30,0])hole(small);
		translate([0,-30,0])hole(small);
		translate([0,50,0])hole(small);
		translate([0,-50,0])hole(small);
		translate([42.5,0,0])hole(small);
		translate([-42.5,0,0])hole(large);
		translate([45,10,0])hole(small);
		translate([-45,10,0])hole(small);
		translate([45,-10,0])hole(small);
		translate([-45,-10,0])hole(small);
		translate([30,20,0])hole(small);
		translate([30,-20,0])hole(small);
		translate([-30,20,0])hole(small);
		translate([-30,-20,0])hole(small);
		translate([20,30,0])hole(small);
		translate([20,-30,0])hole(small);
		translate([-20,30,0])hole(small);
		translate([-20,-30,0])hole(small);
		translate([42.5,25,0])hole(small);
		translate([-42.5,25,0])hole(large);
		translate([42.5,-25,0])hole(small);
		translate([-42.5,-25,0])hole(large);
		translate([10,50,0])hole(small);
		translate([10,-50,0])hole(small);
		translate([-10,50,0])hole(small);
		translate([-10,-50,0])hole(small);
		translate([22.5,50,0])hole(small);
		translate([22.5,-50,0])hole(small);
		translate([-22.5,50,0])hole(large);
		translate([-22.5,-50,0])hole(large);
		translate([32.5,50,0])hole(small);
		translate([32.5,-50,0])hole(small);
		translate([-32.5,50,0])hole(large);
		translate([-32.5,-50,0])hole(large);
		translate([42.5,50,0])hole(small);
		translate([42.5,-50,0])hole(small);
		translate([-42.5,50,0])hole(large);
		translate([-42.5,-50,0])hole(large);

	}
}

60mmplate();