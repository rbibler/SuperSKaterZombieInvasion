/// @description Insert description here
// You can write your code in this editor
xSpeed = 0;
width = (bbox_right - bbox_left);
xMin = xstart - 150;
xMax = xstart + width + 150;
horizMovement = false;
ySpeed = 0;
var randomDeterminer = random_range(0, 1);
show_debug_message("Random determiner: " + string(randomDeterminer));
if(randomDeterminer < 0.5) {
	ySpeed = 1;
} else {
	ySpeed = -1;
}
height = (bbox_bottom - bbox_top);
yMin = ystart - 150;
yMax = ystart + height;