// Check for Impossible: TR -> U -> F -> D -> B
var curInput = 0;
var back = -1;
var down = -1;
var trick = -1;

var inputValues = scr_ProcessInputQueue();
var trick = inputValues[TRICK];
var down = inputValues[DOWN];
var back = inputValues[BACK];


if(trick != -1) {
	if(back != - 1 and down != -1) {
		if(down <= back) {
			return MCTWIST;
		}
	}
}
return NO_TRICK;