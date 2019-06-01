var pathToCheck = argument0;
var pathPoint = argument1;
var pathLength = path_get_length(pathToFollow);
var pathCompleteLength = path_position * path_get_length(pathToFollow);
show_debug_message("COmpleted: " + string(pathCompleteLength));
var pathPoints = path_get_number(pathToCheck);
var tempPath = path_duplicate(pathToCheck);
var i = pathPoint;
for(i = pathPoint; i < pathPoints; i++) {
	path_delete_point(tempPath, i);
}
var pathLength = path_get_length(tempPath);
show_debug_message("Point at: " + string(pathLength));
return pathCompleteLength >= pathLength;