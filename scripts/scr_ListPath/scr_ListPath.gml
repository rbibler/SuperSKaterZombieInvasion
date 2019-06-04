var pathToList = argument0;

var pathNum = path_get_number(pathToList);
var i = 0;
for(i = 0; i < pathNum; i++) {
	var xPt = path_get_point_x(pathToList, i);
	var yPt = path_get_point_y(pathToList, i);
	show_debug_message("    " + string(i) + ": " + string(xPt) + ", " + string(yPt)); 
}