var debugX = x;
var debugY = y;
var debugXSpeed = xSpeed;
var debugYSpeed = ySpeed;
var debugHitX = false;
var debugHitY = false;



if(place_meeting(x  + xSpeed, y, obj_baseBlock)) {	
	debugHitX = true;

	var obj = instance_place(x + xSpeed, y, obj_baseBlock);
	//if(obj != noone and obj.isSolid) {
	
		if(place_meeting(x + sign(xSpeed), y, obj_baseBlock)) {
			if(xSpeed < 0) {
				x += 10;
			} else if(xSpeed > 0) {
				x -= 10;
			}
		} 
		while(xSpeed != 0 and !place_meeting(x + sign(xSpeed), y, obj_baseBlock)) {
			x = x + sign(xSpeed);
		}
		show_debug_message("X collision");
		StopXMotion(); 
		
	//}
}

if(place_meeting(x, y + ySpeed, obj_baseBlock)) {
	debugHitY = true;
	var obj = instance_place(x, y + ySpeed, obj_baseBlock);
	//if(obj != noone and obj.isSolid) {
		if(place_meeting(x, y + sign(ySpeed), obj_baseBlock)) {
			if(ySpeed < 0) {
				y += 10;
			} else if(ySpeed > 0) {
				y -= 10;
			}
		}
		
		while(ySpeed != 0 and !place_meeting(x, y + sign(ySpeed), obj_baseBlock)) {
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
	//}
} else if(grounded) {
	if(place_meeting(x, y + 2, obj_baseBlock)) {
		var obj = instance_place(x, y + 2, obj_baseBlock);
		//if(obj != noone and obj.isSolid) {
			
			y = obj.bbox_top - (bbox_bottom - y) - 1;
			StopYMotion();
			show_debug_message("Y collision");
			with(obj) {
				script_execute(skaterVertCollisionScript, other);
			}
		//}
	}
}

debugOn = false;

if(debugOn and debugHitX and debugHitY) {
	x = debugX;
	y = debugY;
	xSpeed = debugXSpeed;
	ySpeed = debugYSpeed;
	
	var obj = instance_place(x + xSpeed, y, obj_baseBlock);
	//if(obj != noone and obj.isSolid) {
		while(!place_meeting(x + sign(xSpeed), y, obj_baseBlock)) {
			x = x + sign(xSpeed);
		}
		
		StopXMotion(); 
		
	//}
}

