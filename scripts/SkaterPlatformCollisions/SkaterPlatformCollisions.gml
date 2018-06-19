var objV = instance_place(x, y + ySpeed, obj_baseBlock);
var objH = instance_place(x + xSpeed, y, obj_baseBlock);

if(objV != noone and objV.object_index == obj_escalatorBlock) {
	PlatformVerticalFirst();
} else {
	PlatformVerticalSecond();
}
