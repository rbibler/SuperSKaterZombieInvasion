
/// Set up some local variables to store where we are on the rail
var currentRailTile = stateVar[0];
var currentTileX = stateVar[1];
var lastRailHeight = stateVar[2];
var teeterInterval = stateVar[3];
var teeterCorrectionAllowance = stateVar[4];
var lastTeeterTime = stateVar[5];
var isTeetering = stateVar[6];
var startTeeterTime = stateVar[7];

if(stateNew) {
	scr_UpdateSkaterAnimation(jumpAnim);
	// Which rail tile did we start on?
	currentRailTile = scr_GetRailTile(x, bbox_bottom + 1);
	// Which map grid did we start in?
	currentTileX = floor(x / TILE_SIZE);
	// What y offset did we start with?
	lastRailHeight = scr_GetRailHeight(x mod TILE_SIZE, currentRailTile);
	lastTeeterTime = 0;
	//teeterInterval = scr_CalculateTeeterInterval();
	isTeetering = false;
}

//teeterInterval = scr_CalculateTeeterInterval();

//if(isTeetering) {
	//if(input[DOWN] and !lastInput[DOWN]) {
		//isTeetering = false;
		//scr_UpdateSkaterAnimation(jumpAnim);
		//lastTeeterTime = stateTimer;
	//} else if(stateTimer - startTeeterTime >= teeterCorrectionAllowance) {
		//scr_StateSwitch(s_FALLING);
		//return;
	//}
//}

//if(stateTimer - lastTeeterTime >= teeterInterval and !isTeetering) {
	//isTeetering = true;
	//startTeeterTime = stateTimer;
	//teeterCorrectionAllowance = baseTeeterCorrection - (baseTeeterCorrection * (abs(xSpeed) / maxSpeedRailX));
	//if(teeterCorrectionAllowance == 0) {
		//teeterCorrectionAllowance = baseTeeterCorrection;
	//}
	//teeterCorrectionAllowance *= room_speed;
	//scr_UpdateSkaterAnimation(teeterAnim);
//}




// If still grinding, added the gravity impulse and update x position
//var boost = obj_railController.railGravity[currentRailTile];
//xSpeed += boost;
//if( abs(xSpeed) >= maxSpeedRailX) {
	//xSpeed = maxSpeedRailX * .9 * sign(xSpeed);
//}
scr_GeneralMovementFractions();
x += xSpeed;

// Find current map grid and see if we're in a new grid tile
var newTileX = floor(x / TILE_SIZE);
if(newTileX != currentTileX) {
	// If we're in a new tile, find out if rail tile exists directly right or left
	var newTile = scr_GetRailTile(x, bbox_bottom + 1);
	// Calculate the y coord of the top of the grid tile
	var tileStart = (floor((bbox_bottom + 2) / TILE_SIZE)) * TILE_SIZE;
	if(newTile < 1) {
		// If no tile found directly right or left, check if one is downhill a grid square
		newTile = scr_GetRailTile(x, bbox_bottom + 8);
		tileStart = (floor((bbox_bottom + 8) / TILE_SIZE)) * TILE_SIZE;
		if(newTile < 1) {
			// If not downhill, check uphill a square
			newTile = scr_GetRailTile(x, bbox_bottom - 24);
			tileStart = (floor((bbox_bottom - 24) / TILE_SIZE)) * TILE_SIZE;
			if(newTile < 1) {
				// If not horizontal, downhill, or uphill, the rail must have ended. Fall off.
				scr_StateSwitch(s_FALLING);
				return;
			}
		}
	}
	// Still on rail, so update current rail tile
	currentRailTile = newTile;
	var railHeight = scr_GetRailHeight(x mod TILE_SIZE, currentRailTile);
	tileStart += railHeight;
	// Our new position is above the rail by the distance between our bottom and middle
	y = tileStart - (bbox_bottom - y);
	lastRailHeight = railHeight;
} else {
	// If no tile change, find the height offset for our x pos and update y pos by the delta
	// Idea is: If we're still grinding and we're on the same tile, we don't need to recalculate
	// y pos from the tile border, we just need to know difference between where we were and where
	// we are. 
	var newHeight = scr_GetRailHeight(x mod TILE_SIZE, currentRailTile);
	y += newHeight - lastRailHeight;
	lastRailHeight = newHeight;
}

// check for exit conditions
if(input[JUMP] and !lastInput[JUMP] or jumpInputBuffer > 0) {
	scr_StateSwitch(s_JUMPING);
	//if(stateTimer < room_speed / 2 and xSpeed != 0) {
		//xSpeed +=  railJumpBoost * sign(xSpeed);
	//}
	return;
}

// Save our state variables for next time
stateVar[0] = currentRailTile;
stateVar[1] = newTileX;
stateVar[2] = lastRailHeight;
stateVar[3] = teeterInterval;
stateVar[4] = teeterCorrectionAllowance;
stateVar[5] = lastTeeterTime;
stateVar[6] = isTeetering;
stateVar[7] = startTeeterTime;