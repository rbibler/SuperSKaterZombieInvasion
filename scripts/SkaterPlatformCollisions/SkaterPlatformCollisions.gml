var obj2 = instance_place(x + xSpeed, y, obj_baseBlock);
//if(obj != obj2) {
if(place_meeting(x  + xSpeed, y, obj_baseBlock)) {
	while(!place_meeting(x + sign(xSpeed), y, obj_baseBlock)) {
		x = x + sign(xSpeed);
	}
	StopXMotion();
	show_debug_message("Horizontal Platform Collision");
}



var obj = instance_place(x, y + ySpeed, obj_baseBlock);
if(place_meeting(x, y + ySpeed, obj_baseBlock)) {
	
	while(!place_meeting(x, y + sign(ySpeed), obj_baseBlock)) {
		y = y + sign(ySpeed);
	}
	if(!grounded and ySpeed > 0) {
		grounded = true;
	}
	StopYMotion();
		
	with(obj) {
		script_execute(skaterVertCollisionScript);
	}
	
} else if(grounded) {
	var obj = instance_place(x, y + 1, obj_baseBlock);
	if(place_meeting(x, y + 1, obj_baseBlock)) {
		
		StopYMotion();
	
		with(obj) {
			script_execute(skaterVertCollisionScript);
		}
	
	} else {
		show_debug_message("No Vertical Platform Collision");
	}
}