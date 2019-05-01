/// @description Insert description here
// You can write your code in this editor

var camHorizOffset = obj_skater.facing > 0 ? horizontalOffsetRight : horizontalOffsetLeft;
var drawX = leftBoundary + boundaryWidth;
draw_line_color(drawX, 0, drawX, 5000, c_green, c_green);

var color = shouldScrollHoriz ? c_red : c_yellow;
draw_line_color(leftBoundary, 0, leftBoundary, 5000, color, color);
draw_line_color(rightBoundary, 0, rightBoundary, 5000, color, color);
color = c_black;
drawX = camera_get_view_x(camera) + (cameraWidth / 2);
draw_line_color(drawX, 0, drawX, 5000, color, color);