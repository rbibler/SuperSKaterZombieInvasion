// Grab collision points for debug display
var xCheck = x + xSpeed;
var yCheck = y + ySpeed;
debugPoints[HOT_SPOT_X] = floor(xCheck / 16);
debugPoints[HOT_SPOT_Y] = floor(yCheck / 16);

xCheck = x + xSpeed + sensors[RIGHT_EDGE_X];
yCheck = y + ySpeed + sensors[RIGHT_EDGE_Y];
debugPoints[RIGHT_EDGE_X] = floor(xCheck / 16);
debugPoints[RIGHT_EDGE_Y] = floor(yCheck / 16);


xCheck = x + xSpeed + sensors[LEFT_EDGE_X];
yCheck = y + ySpeed + sensors[LEFT_EDGE_Y];
debugPoints[LEFT_EDGE_X] = floor(xCheck / 16);
debugPoints[LEFT_EDGE_Y] = floor(yCheck / 16);

xCheck = x + xSpeed + sensors[BOTTOM_RIGHT_X];
yCheck = y + ySpeed + sensors[BOTTOM_RIGHT_Y];
debugPoints[BOTTOM_RIGHT_X] = floor(xCheck / 16);
debugPoints[BOTTOM_RIGHT_Y] = floor(yCheck / 16);

xCheck = x + xSpeed + sensors[BOTTOM_LEFT_X];
yCheck = y + ySpeed + sensors[BOTTOM_LEFT_Y];
debugPoints[BOTTOM_LEFT_X] = floor(xCheck / 16);
debugPoints[BOTTOM_LEFT_Y] = floor(yCheck / 16);

xCheck = x + xSpeed + sensors[SLOPE_CATCHER_RIGHT_X];
yCheck = y + ySpeed + sensors[SLOPE_CATCHER_RIGHT_Y];
debugPoints[SLOPE_CATCHER_RIGHT_X] = floor(xCheck / 16);
debugPoints[SLOPE_CATCHER_RIGHT_Y] = floor(yCheck / 16);

xCheck = x + xSpeed + sensors[SLOPE_CATCHER_LEFT_X];
yCheck = y + ySpeed + sensors[SLOPE_CATCHER_LEFT_Y];
debugPoints[SLOPE_CATCHER_LEFT_X] = floor(xCheck / 16);
debugPoints[SLOPE_CATCHER_LEFT_Y] = floor(yCheck / 16);

xCheck = x + xSpeed + sensors[TOP_X];
yCheck = y + ySpeed + sensors[TOP_Y];
debugPoints[TOP_X] = floor(xCheck / 16);
debugPoints[TOP_Y] = floor(yCheck / 16);