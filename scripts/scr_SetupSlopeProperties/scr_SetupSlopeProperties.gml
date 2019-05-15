/// This is a script that helps the Tile Controller object setup parameters for slope height
/*
* These parameters only need to be defined once, as they apply to both 
* skate state and on foot (or in the case of impulse, only to skate state)
*/

slopeHeights[SOLID, 0] = 0
slopeHeights[SOLID, 1] = 0
slopeHeights[SOLID, 2] = 0
slopeHeights[SOLID, 3] = 0
slopeHeights[SOLID, 4] = 0
slopeHeights[SOLID, 5] = 0
slopeHeights[SOLID, 6] = 0
slopeHeights[SOLID, 7] = 0
slopeHeights[SOLID, 8] = 0
slopeHeights[SOLID, 9] = 0
slopeHeights[SOLID, 10] = 0
slopeHeights[SOLID, 11] = 0
slopeHeights[SOLID, 12] = 0
slopeHeights[SOLID, 13] = 0
slopeHeights[SOLID, 14] = 0
slopeHeights[SOLID, 15] = 0
slopeHeights[SOLID, 16] = 0
slopeHeights[SOLID, 17] = 0
slopeHeights[SOLID, 18] = 0
slopeHeights[SOLID, 19] = 0
slopeHeights[SOLID, 20] = 0
slopeHeights[SOLID, 21] = 0
slopeHeights[SOLID, 22] = 0
slopeHeights[SOLID, 23] = 0
slopeHeights[SOLID, 24] = 0
slopeHeights[SOLID, 25] = 0
slopeHeights[SOLID, 26] = 0
slopeHeights[SOLID, 27] = 0
slopeHeights[SOLID, 28] = 0
slopeHeights[SOLID, 29] = 0
slopeHeights[SOLID, 30] = 0
slopeHeights[SOLID, 31] = 0

slopeHeights[ONE_WAY_TOP, 0] = 0
slopeHeights[ONE_WAY_TOP, 1] = 0
slopeHeights[ONE_WAY_TOP, 2] = 0
slopeHeights[ONE_WAY_TOP, 3] = 0
slopeHeights[ONE_WAY_TOP, 4] = 0
slopeHeights[ONE_WAY_TOP, 5] = 0
slopeHeights[ONE_WAY_TOP, 6] = 0
slopeHeights[ONE_WAY_TOP, 7] = 0
slopeHeights[ONE_WAY_TOP, 8] = 0
slopeHeights[ONE_WAY_TOP, 9] = 0
slopeHeights[ONE_WAY_TOP, 10] = 0
slopeHeights[ONE_WAY_TOP, 11] = 0
slopeHeights[ONE_WAY_TOP, 12] = 0
slopeHeights[ONE_WAY_TOP, 13] = 0
slopeHeights[ONE_WAY_TOP, 14] = 0
slopeHeights[ONE_WAY_TOP, 15] = 0

slopeHeights[SAND, 0] = 0
slopeHeights[SAND, 1] = 0
slopeHeights[SAND, 2] = 0
slopeHeights[SAND, 3] = 0
slopeHeights[SAND, 4] = 0
slopeHeights[SAND, 5] = 0
slopeHeights[SAND, 6] = 0
slopeHeights[SAND, 7] = 0
slopeHeights[SAND, 8] = 0
slopeHeights[SAND, 9] = 0
slopeHeights[SAND, 10] = 0
slopeHeights[SAND, 11] = 0
slopeHeights[SAND, 12] = 0
slopeHeights[SAND, 13] = 0
slopeHeights[SAND, 14] = 0
slopeHeights[SAND, 15] = 0


scr_SlopeTableGenerator(UP_SLOPE_LONG, 4, 1, 30, UP_SLOPE);


// Tile 9 (Upslope Long 2)
scr_SlopeTableGenerator(UP_SLOPE_LONG + 1, 4, 1, 22, UP_SLOPE);

// Tile 10 (Upslope long 3)
scr_SlopeTableGenerator(UP_SLOPE_LONG + 2, 4, 1, 14, UP_SLOPE);

// Tile 11 (Upslope long 4)
scr_SlopeTableGenerator(UP_SLOPE_LONG + 3, 4, 1, 6, UP_SLOPE);

// Tile 8 (Downslope long 1)
scr_SlopeTableGenerator(DOWN_SLOPE_LONG, 4, 1, 0, DOWN_SLOPE);

// Tile 9 (Downslope long 2)
scr_SlopeTableGenerator(DOWN_SLOPE_LONG + 1, 4, 1, 8, DOWN_SLOPE);

// Tile 10 (Downslope long 3)
scr_SlopeTableGenerator(DOWN_SLOPE_LONG + 2, 4, 1, 16, DOWN_SLOPE);

// Tile 11 (Downslope long 4)
scr_SlopeTableGenerator(DOWN_SLOPE_LONG + 3, 4, 1, 24, DOWN_SLOPE);

// Tile 12 (Upslope medium 1)
scr_SlopeTableGenerator(UP_SLOPE_MED, 2, 1, 30, UP_SLOPE);

// Tile 13 (Upslope medium 2)
scr_SlopeTableGenerator(UP_SLOPE_MED + 1, 2, 1, 14, UP_SLOPE);

// Tile 14 (Downslope medium 1)
scr_SlopeTableGenerator(DOWN_SLOPE_MED, 2, 1, 0, DOWN_SLOPE);

// Tile 15 (Downslope medium 2)
scr_SlopeTableGenerator(DOWN_SLOPE_MED + 1, 2, 1, 16, DOWN_SLOPE);

// Tile 16 (Upslope short 1)
scr_SlopeTableGenerator(UP_SLOPE_SHORT, 1, 1, 30, UP_SLOPE);

// Tile 17 (Downslope short 2)
scr_SlopeTableGenerator(DOWN_SLOPE_SHORT, 1, 1, 0, DOWN_SLOPE);

// Slope gravity is added to skater's xspeed to simulate gravity on a slope
// only applies to skate state
slopeGravity[UP_SLOPE_LONG] = -0.2;
slopeGravity[UP_SLOPE_LONG + 1] = -0.2;
slopeGravity[UP_SLOPE_LONG + 2] = -0.2;
slopeGravity[UP_SLOPE_LONG + 3] = -0.2;

slopeGravity[DOWN_SLOPE_LONG] =  0.2;
slopeGravity[DOWN_SLOPE_LONG + 1] =  0.2;
slopeGravity[DOWN_SLOPE_LONG + 2] = 0.2;
slopeGravity[DOWN_SLOPE_LONG + 3] = 0.2;

slopeGravity[UP_SLOPE_MED] = -0.3;
slopeGravity[UP_SLOPE_MED + 1] = -0.3;

slopeGravity[DOWN_SLOPE_MED] = 0.3;
slopeGravity[DOWN_SLOPE_MED + 1] = 0.3;

slopeGravity[UP_SLOPE_SHORT] = -0.4;
slopeGravity[DOWN_SLOPE_SHORT] = 0.4;

// Slope Momentum is added to a skater's y speed when he jumps off or falls off a ramp
// Applies to both skate state and on foot state.
slopeMomentumMax[UP_SLOPE_LONG] = -5;
slopeMomentumMax[UP_SLOPE_LONG + 1] = -5;
slopeMomentumMax[UP_SLOPE_LONG + 2] = -5;
slopeMomentumMax[UP_SLOPE_LONG + 3] = -5;
	 
slopeMomentumMax[DOWN_SLOPE_LONG] =  -5;
slopeMomentumMax[DOWN_SLOPE_LONG + 1] =  -5;
slopeMomentumMax[DOWN_SLOPE_LONG + 2] = -5;
slopeMomentumMax[DOWN_SLOPE_LONG + 3] = -5;
	
slopeMomentumMax[UP_SLOPE_MED] = -7;
slopeMomentumMax[UP_SLOPE_MED + 1] = -7;
	
slopeMomentumMax[DOWN_SLOPE_MED] = -7;
slopeMomentumMax[DOWN_SLOPE_MED + 1] = -7;
	 
slopeMomentumMax[UP_SLOPE_SHORT] = -8;
slopeMomentumMax[DOWN_SLOPE_SHORT] = -8;