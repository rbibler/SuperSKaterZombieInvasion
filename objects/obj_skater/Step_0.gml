/// @description Insert description here
// You can write your code in this editor

// Get the user's input
SkaterInput();
friction = 0;

// Update skater's movement based on current state
switch(state) {
	case CLIMBING:
		event_user(1);
	break;
	default:
		event_user(0);
	break;
}


// Check horizontal collisions
// Moving right first
if(xSpeed > 0) {
	var horizColObject = collision_rectangle(bbox_right, bbox_top, bbox_right + xSpeed + 1, bbox_bottom, obj_solidBlock, false, true);
	if(horizColObject > 0) {
		var colDist = (horizColObject.bbox_left - bbox_right) - 1;
		x += min(colDist, xSpeed);
		xSpeed = 0;
	}
} else if(xSpeed < 0) {
	var horizColObject = collision_rectangle(bbox_left, bbox_top, bbox_left + xSpeed, bbox_bottom, obj_solidBlock, false, true);
	if(horizColObject > 0) {
		var colDist = bbox_left - horizColObject.bbox_right;
		x -= min(colDist, abs(xSpeed));
		xSpeed = 0;
	}
}

// Checking to see if skater lands on something
var colObject = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom + ySpeed, obj_solidBlockTop, false, true);
if(colObject != noone) {
	if(ySpeed > 0) {
		if(lastBounds[BBOX_BOTTOM] <= colObject.bbox_top) {
			ySpeed = 0;
			y = colObject.bbox_top - 2;
			jump = 0;
		}
	}
}



// Handle slope collisions
var slopeLeft = place_meeting(x, y + ySpeed, obj_slopeBlockLeft);
if(slopeLeft) {
	ySpeed = 0;
	jump = 0;
	
	if(xSpeed == 0) {
		y = slopeLeft.bbox_top - 2;
	}
	var yMovement = ceil(xSpeed / slopeLeft.xPixelsPerYPixel);
	// If skater is moving left, then he's moving up-hill
	if(xSpeed < 0) {
		y -= yMovement;
	} 
	// Otherwise, moving down the hill
	else {
		y += yMovement;
	}
	//onSlopeLeft = true;
	//onSlopeRight = false;
} else {
	//onSlopeLeft = false;
} 

if(ySpeed >= 0) {
	var slopeRight = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom + ySpeed, obj_slopeBlockRight, true, false);
	if(slopeRight) {
		while(collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom + 1, obj_slopeBlockRight, true, false)) {
			y--;
		}
		ySpeed = 0;
		jump = 0;
		onSlopeRight = true;
		onSlopeLeft = false;
	} else {
		onSlopeRight = false;
	}
}



var vertColObject = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top + ySpeed, obj_solidBlockTop, true, false);
if ySpeed < 0
and  vertColObject > 0 {
	var colDist = (vertColObject.bbox_bottom - bbox_top) + 1;
	y += max(colDist, ySpeed);
	ySpeed = 0;
}

var climbBlock = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_climbBlock, true, false);
if(climbBlock && state != CLIMBING) {
	if(input[UP] || input[DOWN]) {
		state = CLIMBING;
		myGravity = 0;
		xSpeed = 0;
		ySpeed = 0;
	}
}




