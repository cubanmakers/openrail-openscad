// OpenRail 80mm gantry plate
// drawn by jdausilio/zeke7237
// really not positive on these dimensions, docs don't seem to provide details

$fn=50;

// holes
large=7.1;
small=5.2;

//plate
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
		for(i = [	[0,0,0],			[10,0,0],		[-10,0,0],		[0,10,0],		[0,-10,0],		[0,30,0],		[0,-30,0],	
						[0,60,0],		[0,-60,0],		[10,40,0],		[-10,40,0],	[10,60,0],		[-10,60,0],	[10,-40,0],	
						[-10,-40,0],	[10,-60,0],	[-10,-60,0],	[30,40,0],		[-30,40,0],	[30,-40,0],	[-30,-40,0],
						[22.5,60,0],	[22.5,-60,0],	[32.5,60,0],	[32.5,-60,0],	[42.5,60,0],	[42.5,-60,0],	[52.5,60,0],
						[52.5,-60,0],	[40,30,0],		[-40,30,0],	[40,-30,0],	[-40,-30,0],	[52.5,0,0],	[52.5,0,0],
						[52.5,35,0],	[52.5,-35,0],	[55,10,0],		[55,-10,0],	[-55,10,0],	[-55,-10,0],	[40,10,0],
						[40,-10,0],	[-40,10,0],	[-40,-10,0],	[30,0,0],		[-30,0,0] ])	
		{
			translate(i)hole(small);
		}


		for(i = [	[-52.5,-35,0],	[-52.5,35,0],		[-52.5,0,0],		[-52.5,0,0],	[-52.5,-60,0],	[-52.5,60,0],
						[-42.5,-60,0],	[-42.5,60,0],		[-32.5,-60,0],	[-32.5,60,0],	[-22.5,-60,0],	[-22.5,60,0] ])
		{
			translate(i)hole(large);
		}



	}
}

80mmplate();