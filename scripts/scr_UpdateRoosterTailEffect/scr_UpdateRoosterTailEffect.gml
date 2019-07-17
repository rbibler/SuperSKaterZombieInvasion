var tailState = argument0;

var roosterTail = noone;
if(!instance_exists(obj_JetSkiRoosterTail)) {
	roosterTail = instance_create_layer(x, y, "Effects", obj_JetSkiRoosterTail);
} else {
	roosterTail = instance_find(obj_JetSkiRoosterTail, 0);
}
var tailImage = spr_JetSkiRoosterIdle;
if(tailState == s_MOVING) {
	tailImage = spr_JetSkiRoosterFullSpeed;
}

with(roosterTail) {
	if(sprite_index != tailImage) {
		sprite_index = tailImage;
	}
	image_xscale = other.image_xscale;
	x = other.x;
	y = other.y - 10;
}