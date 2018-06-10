/// Script that helps with GUI layout
/// @arg grid_x
/// @arg grid_y
/// @arg color

var viewHeight = view_hport[0];
var viewWidth = view_wport[0];
var gridX = 8 * (viewWidth / 256);
var gridY = 8 * (viewHeight / 240);


var rectGridX = argument0;
var rectGridY = argument1;
var color = argument2;

var startX = gridX * rectGridX;
var startY = gridY * rectGridY;

draw_rectangle_color(startX, startY, startX + gridX, startY + (gridY * 2), color, color, color, color, false);
