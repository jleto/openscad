$fn=100;

module razor_head_bottom(r=20) {

	cy_r=r;
	cy_h=r*3;

		translate([0,0,4]) {
			rotate([0,0,0]) {
		
				union() {
			
					difference() {
						translate([0,0, 0]) {
							rotate([0,90,0]) {
								cube([4, 68, 120]);
							}
						}
			
						//center hole
						translate([60,34,-5]) {
							rotate([0,0,0]) {
								cylinder(r = 5, h=25);
							}
						}
					}//diff
	
					//side pegs
					translate([20,34,-4]) {
						rotate([0,0,0]) {
							cylinder(r = 4, h=24);
						}
					}
	
					//side pegs
					translate([100,34,-4]) {
						rotate([0,0,0]) {
							cylinder(r = 4, h=24);
						}
					}
			}//union
		}
	}
}
razor_head_bottom();