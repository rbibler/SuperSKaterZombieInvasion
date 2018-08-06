/// Script that helps with GUI layout
/// @arg grid_x
/// @arg grid_y
/// @arg grid_x_end
/// @arg gird_y_end
/// @arg color

var rectGridX = argument0;
var rectGridY = argument1;
var rectGridEndX = argument2;
var rectGridEndY = argument3;
var color = argument4;

var startX = global.gridX * rectGridX;
var startY = global.gridY * rectGridY;
var endX = global.gridX * rectGridEndX;
var endY = global.gridY * rectGridEndY;

draw_rectangle_color(startX + global.Xoffset, startY, endX + global.Xoffset, endY, color, color, color, color, false);
