/// This is a script that helps an enemy determine which what it should face.

var _facing = lastFacing;
if(input[LEFT] and !input[RIGHT]) {
	_facing = FACE_LEFT;
} else if(input[RIGHT] and !input[LEFT]) {
	_facing = FACE_RIGHT;
}

image_xscale = _facing;
lastFacing = _facing;