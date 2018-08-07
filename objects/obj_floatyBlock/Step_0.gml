/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

y += ySpeed;
x += xSpeed;

if(instance_exists(obj_basePhysics)) {
	var obj = instance_place(x, y - 1, obj_basePhysics);
	if(obj != noone) {
		if(!moving) {
			xSpeed = irandom(2);
			ySpeed = irandom(2);
			moving = false;

		}
		obj.carrySpeed = xSpeed;
		obj.y += ySpeed;
	}
}

