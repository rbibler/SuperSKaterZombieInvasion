
if(place_meeting(x  + xSpeed, y, obj_baseBlock)) {	
	var obj = instance_place(x + xSpeed, y, obj_baseBlock);
	if(obj != noone and obj.isSolid) {
		if(place_meeting(x + sign(xSpeed), y, obj_baseBlock)) {
			if(bbox_right > obj.bbox_left and bbox_right < obj.bbox_right) {
				x = obj.bbox_left - (bbox_right - x);
			} else if(bbox_left > obj.bbox_left and bbox_left < obj.bbox_right) {
				x = obj.bbox_right + (bbox_right - x);
			}
		} else {
			while(!place_meeting(x + sign(xSpeed), y, obj_baseBlock)) {
				x = x + sign(xSpeed);
			}
		}
		show_debug_message("X collision");
		StopXMotion(); 
	}

}

if(place_meeting(x, y + ySpeed, obj_baseBlock)) {
	var obj = instance_place(x, y + ySpeed, obj_baseBlock);
	if(obj != noone and obj.isSolid) {
		while(!place_meeting(x, y + sign(ySpeed), obj_baseBlock)) {
			y = y + sign(ySpeed);
		}
		
		if(!grounded and ySpeed > 0) {
			grounded = true;
		}
		if(bbox_bottom > obj.bbox_top and obj.object_index == obj_controlBlock) {
			y = obj.bbox_top - (bbox_bottom - y) - 1;
		}
		StopYMotion();
		show_debug_message("Y collision");
		with(obj) {
			script_execute(skaterVertCollisionScript, other);
		}
	}
} else if(grounded) {
	if(place_meeting(x, y + 2, obj_baseBlock)) {
		var obj = instance_place(x, y + 2, obj_baseBlock);
		if(obj != noone and obj.isSolid) {
			y = obj.bbox_top - (bbox_bottom - y) - 1;
			StopYMotion();
			show_debug_message("Y collision");
			with(obj) {
				script_execute(skaterVertCollisionScript, other);
			}
		}
	}
}

if(place_meeting(x  + xSpeed, y + ySpeed, obj_baseBlock)) {	
	var obj = instance_place(x + xSpeed, y + ySpeed, obj_baseBlock);
	if(obj != noone and obj.isSolid) {
		while(!place_meeting(x + sign(xSpeed), y + sign(ySpeed), obj_baseBlock)) {
			x = x + sign(xSpeed);
			y = y + sign(ySpeed);
		}
		show_debug_message("X & Y collision");
		
	}
}



