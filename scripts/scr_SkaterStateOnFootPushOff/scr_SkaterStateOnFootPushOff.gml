var targetLocationX = stateVar[0];
var targetLocationY = stateVar[1];
var startPosX = stateVar[2];
var startPosY = stateVar[3];
var edgeDirection = stateVar[4];




if(stateNew) {
	sprite_index = spr_SkaterOnFootPushOff;
	startPosX = x;
	startPosY = y;
	edgeDirection = scr_FindEdgeDirection();
	var tileEdgeX = (floor(x / TILE_SIZE) * TILE_SIZE);
	if(edgeDirection == FACE_RIGHT) {
		tileEdgeX += TILE_SIZE;
	}
	var tileEdgeY = floor((bbox_bottom + 1) / TILE_SIZE) * TILE_SIZE;
	targetLocationX = tileEdgeX;
	if(edgeDirection == FACE_RIGHT) {
		targetLocationX += ((bbox_right - bbox_left) / 2);
	} else { 
		targetLocationX -= ((bbox_right - bbox_left) / 2);
	}
	targetLocationY = tileEdgeY;
	x += 4 * image_xscale;
	y += 12;
}

shouldAnimate = false;

if(x != targetLocationX) {
	if(edgeDirection == FACE_RIGHT or (image_xscale == FACE_RIGHT and edgeDirection == 0)) {
		x += speedX;
	} else {
		x -= speedX;
	}
}

y += ySpeed;


if(stateTimer >= (60 / 10)) {
	scr_StateSwitch(s_ON_FOOT_FALLING);
}


stateVar[0] = targetLocationX;
stateVar[1] = targetLocationY;
stateVar[2] = startPosX;
stateVar[3] = startPosY;
stateVar[4] = edgeDirection;