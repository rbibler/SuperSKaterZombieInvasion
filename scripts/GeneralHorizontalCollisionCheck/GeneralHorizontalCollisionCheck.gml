// Check horizontal collisions
/*
* Adapted from Shaun Spaulding's tutorial: https://www.youtube.com/watch?v=Yre-XAE8DBA
*/
var bbox_side = bbox_right;
if(xSpeed < 0) {
	bbox_side = bbox_left;
}
var p1 = tilemap_get_at_pixel(collisionTiles, bbox_side + xSpeed, bbox_top);
var p2 = tilemap_get_at_pixel(collisionTiles, bbox_side + xSpeed, bbox_bottom - 2);
var p3 = tilemap_get_at_pixel(collisionTiles, bbox_side + xSpeed, bbox_bottom - ((bbox_bottom - bbox_top) / 2));
if(tilemap_get_at_pixel(collisionTiles, x, bbox_bottom) > 3) {
	p2 = 0;
}

if(p1 == 1 or p2 == 1 or p3 == 1 and state != climbingState) {
	if(xSpeed > 0) {
		x = x - (x mod 16) + (15) - (bbox_right - x);
	} else {
		x = x - (x mod 16) - (bbox_left - x);
	}
	StopXMotion();
	if(script_exists(horizCollisionScript)) {
		script_execute(horizCollisionScript);
	}
	
}

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
			StopXMotion(); 
			script_execute(horizCollisionScript, obj);
			show_debug_message("Here is a platform collision");
		}
	}

}

x += xSpeed;