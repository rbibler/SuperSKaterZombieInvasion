/// Script that helps with GUI layout
/// @arg grid_x
/// @arg grid_y
/// @arg grid_x_end
/// @arg gird_y_end
/// @arg color
/// @arg xPos
/// @arg yPos

var rectGridX = argument0;
var rectGridY = argument1;
var rectGridEndX = argument2;
var rectGridEndY = argument3;
var color = argument4;
var xPos = argument5;
var yPos = argument6;

var startX = GRID_X * rectGridX;
var startY = GRID_Y * rectGridY;
var endX = GRID_X * rectGridEndX;
var endY = GRID_Y * rectGridEndY;

draw_rectangle_color(startX + xPos, startY + yPos, endX + xPos, endY + yPos, color, color, color, color, false);
