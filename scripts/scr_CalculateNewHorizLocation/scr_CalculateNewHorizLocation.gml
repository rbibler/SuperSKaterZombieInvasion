/// This is an 
var bbox_side = bbox_right;
if(xSpeed < 0) {
	bbox_side = bbox_left;
}
var collisionPointHoriz = bbox_side + xSpeed;
return collisionPointHoriz;