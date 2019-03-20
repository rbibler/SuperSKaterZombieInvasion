/// This is a script that helps the Tile Controller object setup params about friction

// Distinct friction values can be set for each tile. 
// Friction values can be different for skate state and on foot state.
for(var i = 0; i < numberOfTiles; i++) {
	tileFriction[SKATE_STATE, i] = -1;
	tileFriction[ON_FOOT_STATE, i] = -1;
}



tileFriction[SKATE_STATE, SOLID] = 0.175;
tileFriction[SKATE_STATE, ONE_WAY_TOP] = 0.175;
tileFriction[SKATE_STATE, SAND] = 1;