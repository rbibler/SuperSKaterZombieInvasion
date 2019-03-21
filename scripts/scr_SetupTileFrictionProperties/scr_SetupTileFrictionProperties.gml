/// This is a script that helps the Tile Controller object setup params about friction

// Distinct friction values can be set for each tile. 
// Friction values can be different for skate state and on foot state.
for(var i = 0; i < numberOfTiles; i++) {
	tileAccel[SKATE_STATE, i] = -1;
	tileAccel[ON_FOOT_STATE, i] = -1;
	tileDecel[SKATE_STATE, i] = -1;
	tileDecel[ON_FOOT_STATE, i] = -1;
}



tileAccel[SKATE_STATE, SOLID] = 0.175;
tileAccel[SKATE_STATE, ONE_WAY_TOP] = 0.175;
tileAccel[SKATE_STATE, SAND] = .5;

tileDecel[SKATE_STATE, SOLID] = 0.125;
tileDecel[SKATE_STATE, ONE_WAY_TOP] = 0.125;
tileDecel[SKATE_STATE, SAND] = 1;