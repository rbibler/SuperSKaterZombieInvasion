var currentRailTile = stateVar[0];
var currentTileX = stateVar[1];
var lastRailHeight = stateVar[2];

if(stateNew) {
	scr_SetCurrentAnimation(jumpAnim);
	currentRailTile = scr_GetRailTile(x, bbox_bottom + 1);
	currentTileX = floor(x / TILE_SIZE);
}

if(scr_SkaterCheckJump()) {
	scr_StateSwitch(s_JUMPING);
} else {
	
	var boost = obj_railController.railGravity[currentRailTile];
	xSpeed += boost;
	scr_GeneralMovementFractions();
	x += xSpeed;
	var newTileX = floor(x / TILE_SIZE);
	if(newTileX != currentTileX) {
		var newTile = scr_GetRailTile(x, bbox_bottom + 1);
		var tileStart = (floor((bbox_bottom + 2) / TILE_SIZE)) * TILE_SIZE;
		if(newTile < 1) {
			newTile = scr_GetRailTile(x, bbox_bottom + 8);
			tileStart = (floor((bbox_bottom + 8) / TILE_SIZE)) * TILE_SIZE;
			if(newTile < 1) {
				newTile = scr_GetRailTile(x, bbox_bottom - 24);
				tileStart = (floor((bbox_bottom - 24) / TILE_SIZE)) * TILE_SIZE;
				if(newTile < 1) {
					scr_StateSwitch(s_FALLING);
					return;
				}
			}
		}
		currentRailTile = newTile;
		var railHeight = scr_GetRailHeight(x mod TILE_SIZE, currentRailTile);
		tileStart += railHeight;
		y = tileStart - (bbox_bottom - y);
		lastRailHeight = railHeight;
	} else {
		var newHeight = scr_GetRailHeight(x mod TILE_SIZE, currentRailTile);
		y += newHeight - lastRailHeight;
		lastRailHeight = newHeight;
	}
}

stateVar[0] = currentRailTile;
stateVar[1] = newTileX;
stateVar[2] = lastRailHeight;