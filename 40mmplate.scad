// OpenRail 40mm gantry plate
// drawn by jdausilio/zeke7237
// really not positive on these dimensions, docs don't seem to provide details

$fn=50;

// holes
large=7.1;
small=5.2;

// plate
width=100;
length=120;
radius=10;
thickness=2.9;	// docs say 3.2 but mine measure 2.9

module hole(diameter) {
	cylinder(r=diameter/2,h=5,center=true);
}

module 40mmplate() {
	difference() {
		// the plate
		minkowski() {
			cube([width-2*radius,length-2*radius,thickness/2],center=true);
			cylinder(r=radius, h=thickness/2,center=true);
		}
		// the holes
		for(i = [	[0,0,0],				[10,0,0],			[-10,0,0],			[0,10,0],		[0,-10,0],			[32.5,0,0],	
						[20,10,0],			[40,10,0],			[-20,10,0],		[-40,10,0],	[20,-10,0],		[40,-10,0],
						[-20,-10,0],		[-40,-10,0],		[10,20,0],			[-10,20,0],	[10,30,0],			[-10,30,0],
						[10,-20,0],		[-10,-20,0],		[10,-30,0],		[-10,-30,0],	[10,42.5,0],		[-10,42.5,0],
						[0,42.5,0],		[22.5,42.5,0],	[32.5,42.5,0],	[10,-42.5,0],	[-10,-42.5,0],	[0,-42.5,0],
						[22.5,-42.5,0],	[32.5,-42.5,0] ])
		{
			translate(i)hole(small);
		}
		for(i = [	[-22.5,42.5,0],		[-32.5,42.5,0],		[-22.5,-42.5,0],		[-32.5,-42.5,0],		[-32.5,0,0] ])
		{
			translate(i)hole(large);
		}
	}
}

40mmplate();