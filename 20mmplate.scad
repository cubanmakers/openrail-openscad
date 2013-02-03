// OpenRail 20mm gantry plate
// drawn by jdausilio/zeke7237

$fn=50;

// holes
large=7.1;
small=5.2;

//plate
width=80;
length=80;
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
		for(i = [	[0,0,0],				[10,0,0],			[-10,0,0],			[0,10,0],			[0,-10,0],
						[22.5,0,0],		[-22.5,0,0],		[0,-22.5,0],		[0,+22.5,0],		[22.5,+22.5,0],
						[22.5,-22.5,0] ])
		{
			translate(i)hole(small);
		}
		for(i = [	[-22.5,+22.5,0],
						[-22.5,-22.5,0] ])
		{
			translate(i)hole(large);
		}
	}
}

20mmplate();
