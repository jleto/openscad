use <razor_handle.scad>;
use <razor_head_top.scad>;
use <razor_head_bottom.scad>;

module razor() {

	r_handle=10;
	x_handle=r_handle*3;

	r_head=20;

	//construct handle
	
	translate([42,52,0]) {
		razor_handle();
	}

	translate([0,0,125]) {
		razor_head_top();
	}

	translate([0,0,120]) {
		razor_head_bottom();
	}
}

razor();
