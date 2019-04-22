/// This is a script that helps an object determine if it's collided with a block.

if(place_meeting(x, y + ySpeed, obj_baseBlock)) {
	var obj = instance_place(x, y + ySpeed, obj_baseBlock);
	if(obj != noone and obj.isSolid) {
		while(!place_meeting(x, y + sign(ySpeed), obj_baseBlock)) {
			y = y + sign(ySpeed);
		}
		if(!grounded and ySpeed > 0) {
			grounded = true;
			show_debug_message("Block ground");
		}
		if(bbox_bottom > obj.bbox_top and obj.object_index == obj_controlBlock) {
			y = obj.bbox_top - (bbox_bottom - y) - 1;
		}
		scr_StopYMotion();
		with(obj) {
			script_execute(skaterVertCollisionScript, other);
		}
	}
} else if(ySpeed >= 0) {
	if(place_meeting(x, y + 4, obj_baseBlock)) {
		var obj = instance_place(x, y + 4, obj_baseBlock);
			if(obj != noone and obj.isSolid) {
			y = obj.bbox_top - (bbox_bottom - y) - 1;
			scr_StopYMotion();
			show_debug_message("Block ground 2");
			grounded = true;
			with(obj) {
				script_execute(skaterVertCollisionScript, other);
			}
		}
	}
}