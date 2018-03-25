/// @description Climbing step event
// You can write your code in this editor

if(input[LEFT] && !input[RIGHT]) {
	hspeed = -climbSpeed;
} else if(input[RIGHT] && !input[LEFT]) {
	hspeed = climbSpeed;
} else {
	hspeed = 0;
}

if(input[UP] && !input[DOWN]) {
	vspeed = -climbSpeed;
} else if(input[DOWN] && !input[UP]) {
	vspeed = climbSpeed;
} else {
	vspeed = 0;
}

if(input[JUMP] && !lastInput[JUMP]) {
	vspeed = jumpSpeed;
	state = 0;
	jump = 1;
	gravity = 1;
}

if not place_meeting(x,y,obj_climbBlock)
or collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1,obj_solidBlock,0,0)
{

    //Switch to idle state
    state = 0
	gravity = 1;

}
