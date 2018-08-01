// Check horizontal collisions
/*
* Adapted from Shaun Spaulding's tutorial: https://www.youtube.com/watch?v=Yre-XAE8DBA
*/
var bbox_side = bbox_right;
if(xSpeed < 0) {
	bbox_side = bbox_left;
}

var horizCollision = false;

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

if(!horizCollision) {
	var areYouSure = false;
	if(place_meeting(x  + xSpeed, y, obj_baseBlock)) {	
		var obj = instance_place(x + xSpeed, y, obj_baseBlock);	
		if(obj != noone and obj.isSolid) {
			areYouSure = true;
			if(obj.object_index == obj_platform and !obj.hasMoved) {
				if(obj.movementDirection == 0) {
					if(!place_meeting(x + xSpeed - obj.xSpeed, y, obj_baseBlock)) {
						areYouSure = false;
					}
				}
			}
			if(areYouSure) {
				if(xSpeed > 0 or obj.x > x) {
					x = obj.bbox_left - (bbox_right - x) - 1;
				} else if(xSpeed < 0) {
					x = obj.bbox_right + (x - bbox_left);
				}
				show_debug_message("HCOL 3");
				StopXMotion(); 
				script_execute(horizCollisionScript, obj);
			}
		}
	}
}

x += xSpeed;



