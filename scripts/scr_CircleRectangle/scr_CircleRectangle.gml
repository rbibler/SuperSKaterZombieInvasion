/// This is a script that helps an object determine if a cricle intersects a rectangle
/// @arg cx
/// @arg cy
/// @arg radius
/// @arg rx
/// @arg ry
/// @arg rw
/// @arg rh

var cx = argument0;
var cy = argument1;
var radius = argument2;
var rx = argument3;
var ry = argument4;
var rw = argument5;
var rh = argument6;

var testX = cx;
var testY = cy;

if(cx < rx) {
	testX = rx;
} else if(cx > rx + rw) {
	testX = rx + rw;
}

if(cy < ry) {
	testY = ry;
} else if(cy > ry + rh) {
	testY = ry + rh;
}

var distX = cx - testX;
var distY = cy - testY;
var dist = sqrt(sqr(distX) + sqr(distY));

if(dist <= radius) {
	return true;
}
return false;