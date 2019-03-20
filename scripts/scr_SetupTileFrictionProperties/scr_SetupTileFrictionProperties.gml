/// This is a script that helps the Tile Controller object setup params about friction

// Distinct friction values can be set for each tile. 
// Friction values can be different for skate state and on foot state.

tileFriction[SKATE_STATE, SOLID] = 0.175;
tileFriction[SKATE_STATE, ONE_WAY_TOP] = 0.175;
tileFriction[SKATE_STATE, SAND] = 0.75;