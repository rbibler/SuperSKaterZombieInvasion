var obj = instance_place(x, bbox_bottom, obj_ramp);
if(obj != noone) {
	if(xSpeed != 0 and sign(xSpeed) == obj.rampDirection) {
		return obj;
	} else {
		return noone;
	}
} else {
	return noone;
}