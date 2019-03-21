if(global.debug and object_index == obj_skater) {
	show_debug_message("    xSpeedFrac: " + string(xSpeedFraction)); 
}
xSpeed += xSpeedFraction;
ySpeed += ySpeedFraction;

xSpeedFraction = frac(xSpeed);
ySpeedFraction = frac(ySpeed);
xSpeed -= xSpeedFraction;
ySpeed -= ySpeedFraction;
