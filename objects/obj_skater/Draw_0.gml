/// @description Insert description here
// You can write your code in this editor

draw_self();

var topLeftX = debugPoints[HOT_SPOT_X] * 16;
var topLeftY = debugPoints[HOT_SPOT_Y] * 16;
var bottomRightX = topLeftX + 16;
var bottomRightY = topLeftY + 16;

draw_set_color(c_black)
draw_rectangle(topLeftX, topLeftY, bottomRightX, bottomRightY, true);

topLeftX = debugPoints[RIGHT_EDGE_X] * 16;
topLeftY = debugPoints[RIGHT_EDGE_Y] * 16;
bottomRightX = topLeftX + 16;
bottomRightY = topLeftY + 16;

draw_set_color(c_red)
//draw_rectangle(topLeftX, topLeftY, bottomRightX, bottomRightY, true);

topLeftX = debugPoints[LEFT_EDGE_X] * 16;
topLeftY = debugPoints[LEFT_EDGE_Y] * 16;
bottomRightX = topLeftX + 16;
bottomRightY = topLeftY + 16;

//draw_rectangle(topLeftX, topLeftY, bottomRightX, bottomRightY, true);

topLeftX = debugPoints[BOTTOM_RIGHT_X] * 16;
topLeftY = debugPoints[BOTTOM_RIGHT_Y] * 16;
bottomRightX = topLeftX + 16;
bottomRightY = topLeftY + 16;

draw_set_color(c_green)
//draw_rectangle(topLeftX, topLeftY, bottomRightX, bottomRightY, true);

topLeftX = debugPoints[BOTTOM_LEFT_X] * 16;
topLeftY = debugPoints[BOTTOM_LEFT_Y] * 16;
bottomRightX = topLeftX + 16;
bottomRightY = topLeftY + 16;

//draw_rectangle(topLeftX, topLeftY, bottomRightX, bottomRightY, true);

topLeftX = debugPoints[SLOPE_CATCHER_RIGHT_X] * 16;
topLeftY = debugPoints[SLOPE_CATCHER_RIGHT_Y] * 16;
bottomRightX = topLeftX + 16;
bottomRightY = topLeftY + 16;

draw_set_color(c_yellow)
//draw_rectangle(topLeftX, topLeftY, bottomRightX, bottomRightY, true);

topLeftX = debugPoints[SLOPE_CATCHER_LEFT_X] * 16;
topLeftY = debugPoints[SLOPE_CATCHER_LEFT_Y] * 16;
bottomRightX = topLeftX + 16;
bottomRightY = topLeftY + 16;

draw_rectangle(topLeftX, topLeftY, bottomRightX, bottomRightY, true);

topLeftX = debugPoints[TOP_X] * 16;
topLeftY = debugPoints[TOP_Y] * 16;
bottomRightX = topLeftX + 16;
bottomRightY = topLeftY + 16;

draw_set_color(c_orange)
//draw_rectangle(topLeftX, topLeftY, bottomRightX, bottomRightY, true);
