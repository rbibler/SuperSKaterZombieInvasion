/// @description Climbing step event
// You can write your code in this editor

if(input[LEFT] && !input[RIGHT]) {
	xSpeed = -climbSpeed;
} else if(input[RIGHT] && !input[LEFT]) {
	xSpeed = climbSpeed;
} else {
	xSpeed = 0;
}

if(input[UP] && !input[DOWN]) {
	ySpeed = -climbSpeed;
} else if(input[DOWN] && !input[UP]) {
	ySpeed = climbSpeed;
} else {
	ySpeed = 0;
}

if(input[JUMP] && !lastInput[JUMP]) {
	ySpeed = jumpSpeed;
	state = 0;
	jump = 1;
	myGravity = 1;
}

if not place_meeting(x,y,obj_climbBlock)
or collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1,obj_solidBlock,0,0)
{

    //Switch to idle state
    state = 0
	myGravity = 1;

}
