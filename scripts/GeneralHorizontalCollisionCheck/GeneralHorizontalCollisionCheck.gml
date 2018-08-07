// Check horizontal collisions
/*
* Adapted from Shaun Spaulding's tutorial: https://www.youtube.com/watch?v=Yre-XAE8DBA
*/

var xSpeedFinal = xSpeed + xCarry;
xCarry = 0;
var bbox_side = bbox_right;
if(xSpeedFinal < 0) {
	bbox_side = bbox_left;
}
var p1 = tilemap_get_at_pixel(collisionTiles, bbox_side + xSpeedFinal, bbox_top);
var p2 = tilemap_get_at_pixel(collisionTiles, bbox_side + xSpeedFinal, bbox_bottom - 2);
var p3 = tilemap_get_at_pixel(collisionTiles, bbox_side + xSpeedFinal, bbox_bottom - ((bbox_bottom - bbox_top) / 2));
if(tilemap_get_at_pixel(collisionTiles, x, bbox_bottom) > 3) {
	p2 = 0;
}

if(p1 == 1 or p2 == 1 or p3 == 1 and state != climbingState) {
	if(xSpeedFinal > 0) {
		x = x - (x mod 16) + (15) - (bbox_right - x);
	} else {
		x = x - (x mod 16) - (bbox_left - x);
	}
	StopXMotion();
	xSpeedFinal = 0;
	if(script_exists(horizCollisionScript)) {
		script_execute(horizCollisionScript);
	}
	
}

if(place_meeting(x  + xSpeedFinal, y, obj_baseBlock)) {	
	var obj = instance_place(x + xSpeedFinal, y, obj_baseBlock);	
	var ignore = false;
	if(obj != noone and obj.isSolid) {
		if(obj.object_index == obj_escalatorBlock) {
			if(abs(bbox_bottom - obj.bbox_top) < 5) {
				ignore = true;
			}
		}
		if(!ignore) {
			while(!place_meeting(x + sign(xSpeedFinal), y, obj_baseBlock)) {
				x = x + sign(xSpeedFinal);
			}
			StopXMotion();
			xSpeedFinal = 0;
			script_execute(horizCollisionScript, obj);
			show_debug_message("Here is a platform collision");
		}
	}

}

x += xSpeedFinal;



