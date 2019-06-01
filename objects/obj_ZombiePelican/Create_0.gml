/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
pathEndPoint = scr_FindLinkedObject(obj_PathPoint, objectLinkKey);
if(pathEndPoint != noone) {
	pathToFollow = path_duplicate(pathToFollow);
	var startY = path_get_point_y(pathToFollow, 0);
	var diff = startY - ystart;
	var newEndPoint = pathEndPoint.y + diff;
	var endPathIndex = path_get_number(pathToFollow) - 1;
	var endPathX = path_get_point_x(pathToFollow, endPathIndex);
	path_change_point(pathToFollow, endPathIndex, endPathX, newEndPoint, 100);
	endPathX = path_get_point_x(pathToFollow, endPathIndex - 1);
	path_change_point(pathToFollow, endPathIndex - 1, endPathX, newEndPoint + 40, 100);
}