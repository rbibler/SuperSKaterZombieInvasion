var pathToCheck = argument0;
var pathPoint = argument1;
var pathCompleteLength = path_position * path_get_length(pathToFollow);
var pathPoints = path_get_number(pathToCheck);
var tempPath = path_duplicate(pathToCheck);
var i = pathPoints;
for(i = pathPoints; i > pathPoint; i--) {
	path_delete_point(tempPath, i);
}
var pathLength = path_get_length(tempPath);


return pathCompleteLength >= pathLength;