var obj = instance_place(x, y + ySpeed, obj_baseBlock);
if(place_meeting(x, y + ySpeed, obj_baseBlock)) {
	
	while(!place_meeting(x, y + sign(ySpeed), obj_baseBlock)) {
		y = y + sign(ySpeed);
	}
	if(!grounded and ySpeed > 0) {
		grounded = true;
	}
	StopYMotion();
	show_debug_message("Y collision");
	with(obj) {
		script_execute(skaterVertCollisionScript);
	}
	
} else if(grounded) {
	var obj = instance_place(x, y + 2, obj_baseBlock);
	if(place_meeting(x, y + 2, obj_baseBlock)) {
		y = obj.bbox_top - (bbox_bottom - y) - 1;
		StopYMotion();
		show_debug_message("Y collision");
		with(obj) {
			script_execute(skaterVertCollisionScript);
		}
	
	}
}

var obj2 = instance_place(x + xSpeed, y, obj_baseBlock);
//if(obj != obj2) {
if(place_meeting(x  + xSpeed, y, obj_baseBlock)) {	
	while(!place_meeting(x + sign(xSpeed), y, obj_baseBlock)) {
		x = x + sign(xSpeed);
	}
	StopXMotion(); 
	show_debug_message("X collision");
}
