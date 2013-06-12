$fn=100;

module razor_handle(r=20)
{
	cy_r=r;
	cy_h=r*3;

	cu_x=cy_h;
	cu_y=2*cy_r;
	cu_z=cy_r;

	translate([0,0,0]){
		rotate([90,0,0]) {
			difference() {
				union() {
		
					//body
					translate([0,0,cy_r]) {
						rotate([180,0,90]) {
							cube([2*cu_x-20,cu_y-4,cu_z]);
							translate([0,cy_r-2,0]) {
								rotate([0,90,0]) {
									cylinder(r=cy_r-2,h=2*cy_h-20);
								}
							}
						}
					}//end body
			
					//male connector
					translate([cy_r-2,2*cy_h-20,18]) {
						rotate([0,90,90]) {
							cylinder(r=cy_r/5-.1,h=cy_h/3);
						}
					}//end male connector
				

				}//union

				//female connector
				translate([cy_r-2,cy_r-20.5,18]) {
					rotate([0,90,90]) {
						cylinder(r=cy_r/5+1,h=cy_h/3+1);
					}
				}//end female connector

			}//difference
		}
	}
}

razor_handle();