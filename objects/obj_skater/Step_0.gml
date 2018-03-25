/// @description Insert description here
// You can write your code in this editor

// Get the user's input
SkaterInput();
friction = 0;

// Checking to see if skater lands on something
var colObject = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom + vspeed, obj_solidBlock, false, true);
if(colObject != noone) {
	if(vspeed > 0) {
		if(lastBounds[BBOX_BOTTOM] <= colObject.bbox_top) {
			vspeed = 0;
			y = colObject.bbox_top - 1;
			jump = 0;
		}
	}
}

// Handle slope collisions
var slopeLeft = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom + vspeed, obj_slopeBlockLeft, true, false);
if(slopeLeft) {
	vspeed = 0;
	jump = 0;
	while(collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom + 1, obj_slopeBlockLeft, true, false)) {
		y--;
	}
	onSlopeLeft = true;
	onSlopeRight = false;
} else {
	onSlopeLeft = false;
}

var slopeRight = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom + vspeed, obj_slopeBlockRight, true, false);
if(slopeRight) {
	vspeed = 0;
	jump = 0;
	while(collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom + 1, obj_slopeBlockRight, true, false)) {
		y--;
	}
	onSlopeRight = true;
	onSlopeLeft = false;
} else {
	onSlopeRight = false;
}

if hspeed > 0
and collision_rectangle(bbox_right, bbox_top, bbox_right + 1, bbox_bottom + vspeed, obj_solidBlock, true, false) {
	hspeed = 0;
	
	while collision_rectangle(bbox_right, bbox_top, bbox_right, bbox_bottom + vspeed, obj_solidBlock, true, false) 
	and not collision_point(x, bbox_top, obj_solidBlock, false, false) {
		x--;
	}
}

else if hspeed < 0
and collision_rectangle(bbox_left - 1, bbox_top, bbox_left, bbox_bottom + vspeed, obj_solidBlock, true, false) {
	hspeed = 0;
	
	while(collision_rectangle(bbox_left, bbox_top, bbox_left, bbox_bottom + vspeed, obj_solidBlock, true, false)) 
	and not collision_point(x, bbox_top, obj_solidBlock, false, false) {
		x++;
	}
}

if vspeed < 0
and collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_solidBlock, true, false) {
	while(collision_rectangle(bbox_left, bbox_top + 1, bbox_right, bbox_top + 1, obj_solidBlock, true, false)) {
		y++;
	}
	
	vspeed = 0;
}

var climbBlock = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_climbBlock, true, false);
if(climbBlock && state != CLIMBING) {
	if(input[UP] || input[DOWN]) {
		state = CLIMBING;
		gravity = 0;
		hspeed = 0;
		vspeed = 0;
	}
}


switch(state) {
	case CLIMBING:
		event_user(1);
	break;
	default:
		event_user(0);
	break;
}


