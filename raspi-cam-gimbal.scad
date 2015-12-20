
// x axis
difference() {
	// size of gimbal
	cube([35, 10, 35]);
	
	// cutouts for camera board & front of board
	union() {
		translate([4.5, 5, 4.5]) {
			cube([26, 2, 40]);
		}
		translate([6, 3, 4.5]) {
			cube([23,10,40]);
		}
	}

	// screw holes for servo arm mount
	translate([-1, 2.5, 3]) {
		rotate([0,90,0]) {
			cylinder(10,1,$fn=350);
		}
	}
	translate([-1, 2.5, 32]) {
		rotate([0,90,0]) {
			cylinder(10,1,$fn=350);
		}
	}	
}

// y axis
translate([-15, -10+2.5, -45]) {
	difference() {

		// main body
		cube([55,22,80]);
		
		// cutout for x axis
		translate([5,-1-2.5,21+10]) {
			cube([100,100,100]);
		}
	
		// cutout for x motor
		translate([-1,7.5-2.5-.25,51-.25]) {
			cube([15,12.5,23]);
		}

		// screw holes for motor mounting
		translate([-1, 7.5+(12/2)-2.5, 51-2.5]) {
			rotate([0,90,0]) {
				cylinder(12,1.5,$fn=350);
			}
		}
		translate([-1, 7.5+(12/2)-2.5, 51+22.5+2.5]) {
			rotate([0,90,0]) {
				cylinder(12,1.5,$fn=350);
			}
		}

		// trim bottom of body
		translate([-1,-1,-38]) {
			cube([70,60,60]);
		}

		// cutout for y motor
		translate([21.5,7.5-3,34]) {
			rotate([0,90,0]) {
				cube([15,13,23.5]);
			}
		}
		
		// screw holes for motor mounting
		translate([22+22.5+2.5, 5+6, 20]) {
			rotate([0,0,0]) {
				cylinder(12,1.5,$fn=350);
			}
		}
		translate([22-2.5, 5+6, 20]) {
			rotate([0,0,0]) {
				cylinder(12,1.5,$fn=350);
			}
		}
	}
}


