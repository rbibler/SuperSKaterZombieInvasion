// This is a script that helps the tile controller object setup params for max speed

// Max speed values can be set per tile and per state
// -1 indicates that the default max speed should be used. 

for(var i = 0; i < numberOfTiles; i++) {
	maxSpeedTile[SKATE_STATE, i] = -2;
	maxSpeedTile[ON_FOOT_STATE, i] = -2;
}

maxSpeedTile[SKATE_STATE, SAND] = 2;