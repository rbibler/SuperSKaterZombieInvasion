/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_basePhysics)) {
	var obj = instance_place(x, y - 1, obj_basePhysics);
	if(obj != noone) {
		obj.xCarry = xSpeed;
		obj.yCarry = ySpeed;
	}
}