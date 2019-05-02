/// @description Insert description here
// You can write your code in this editor


var drawX = x + cameraWidth / 2;
draw_line_color(drawX, 0, drawX, 5000, c_green, c_green);

var color = c_yellow;
draw_line_color(leftBoundary, -1000, leftBoundary, 1000, color, color);
draw_line_color(rightBoundary, -1000, rightBoundary, 1000, color, color);
color = c_white;
draw_line_color(leftAnchor, -1000, leftAnchor, 1000, color, color);
draw_line_color(rightAnchor, -1000, rightAnchor, 1000, color, color);


var textToWrite = "";
switch(state) {
	case CAMERA_IDLE:
		textToWrite = "IDLE";
	break;
	case CAMERA_SCROLLING:
		textToWrite = "SCROLLING";
	break;
	case CAMERA_SCROLL_TO_ANCHOR:
		textToWrite= "ANCHOR_SCROLL";
	break;
	case CAMERA_EASE_TO_STOP:
		textToWrite= "EASE TO STOP";
	break;
}
draw_text_color(drawX, 25, textToWrite, c_navy, c_navy, c_navy, c_navy, 1);