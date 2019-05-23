if(place_meeting(x  + xSpeed, y, obj_baseBlock)) {	
	var obj = instance_place(x + xSpeed, y, obj_baseBlock);	
	var ignore = false;
	if(obj != noone and obj.isSolid) {
		if(obj.object_index == obj_escalatorBlock) {
			if(abs(bbox_bottom - obj.bbox_top) < 5) {
				ignore = true;
			}
		} 
		if(variable_instance_exists(obj, "input") and (obj.x > x and input[LEFT] == 1) or (obj.x < x and input[RIGHT] == 1)) {
			ignore = true;
		}
		if(!ignore) {
			if(place_meeting(x + sign(xSpeed), y, obj_movingPlatform)) {
				while(place_meeting(x + sign(xSpeed), y, obj_movingPlatform)) {
					if(obj.x > x) {
						x--;
					} else {
						x++;
					}
				} 
			}
			else while(!place_meeting(x + sign(xSpeed), y, obj_baseBlock)) {
				x = x + sign(xSpeed);
			}
			scr_StopXMotion(); 
			script_execute(horizCollisionScript, obj);
		}
	}
}