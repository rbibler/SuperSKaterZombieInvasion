var roosterTail = noone;
if(!instance_exists(obj_JetSkiRoosterTail)) {
	roosterTail = instance_create_layer(x, y, "Effects", obj_JetSkiRoosterTail);
} else {
	roosterTail = instance_find(obj_JetSkiRoosterTail, 0);
}
var tailImage = spr_JetSkiRoosterIdle;
var absSpeed = abs(xSpeed);
if(absSpeed > 1 and absSpeed < 4) {
	tailImage = spr_JetSkiRoosterMed
} else if(absSpeed > 4) {
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