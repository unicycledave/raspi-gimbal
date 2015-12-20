difference() {
	// base cube
	cube([60,60,5], center=true);
	
	// center hole for installing mount screw for stepper
	translate([0,0,-10]) cylinder(h = 20, d=6.5, $fn=360);

	// holes to mount stepper arm to block
	translate([0,15.5,-10]) cylinder(h=20, d=1.5, $fn=360);
	translate([0,-15.5,-10]) cylinder(h=20, d=1.5, $fn=360);
	translate([6.5,0,-10]) cylinder(h=20, d=1.5, $fn=360);
	translate([-6.5,0,-10]) cylinder(h=20, d=1.5, $fn=360);
}