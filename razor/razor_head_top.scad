$fn=100;
module razor_head_top(cy_r=20, cy_h=60) {

	offset=-2;

translate([0,0,-20]) {
	
	difference() {
	
		translate([0,0,0]) {
			difference() {
		
		
				translate([0,0,0]){
				
					difference() {
				
						translate([0,34,0]) {
							rotate([0,90,0]){
								cylinder(r=40,h=120);
							}
						}
					
						translate([-4,-10,-80]){
							cube([125,100,100]);
						}
				
						//female connector
						translate([60,34,19]) {
								cylinder(r=5,h=30);
						}//end female connector
					}
				}
		
		
	
		
	
	
			}
		}
	
			//vertical slat
			translate([4.5,48,-15]) {
				cube([110, cy_r/2, cy_h]);
			}
		
			//vertical slat
			translate([4.5, 10,-15]) {
				cube([110, cy_r/2, cy_h]);
			}
	
			//side holes
				//female connector
				translate([20,34,19]) {
						cylinder(r = 5, h=24);
				}//end female connector
	
			//side holes
			//female connector
			translate([100,34,19]) {
					cylinder(r=5,h=24);
			}//end female connector
		}
	
	}
}
razor_head_top();