/// This is a script that helps an object find another object's center x coordinate
/// @arg theObject

var theObject = argument0;
var center = 0;
with(theObject) {
	center = bbox_left + ((bbox_right - bbox_left) / 2);
}
return center;