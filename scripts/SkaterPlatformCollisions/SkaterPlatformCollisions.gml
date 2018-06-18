var obj2 = instance_place(x + xSpeed, y, obj_baseBlock);
//if(obj != obj2) {
if(place_meeting(x  + xSpeed, y, obj_baseBlock)) {	
	var testVert = instance_place(x, y + ySpeed, obj_baseBlock);
	var shouldStop = true;
	if(xSpeed > 0 and obj2.x < x) {
		shouldStop = false;
	} else if(xSpeed < 0 and obj2.x > x) {
		shouldStop = false;
	}
	if(obj2 == testVert) {
		shouldStop = false;
	}
	if(shouldStop) {
		while(!place_meeting(x + sign(xSpeed), y, obj_baseBlock)) {
			x = x + sign(xSpeed);
		}
		StopXMotion();
	}
	 
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
	
	}
}