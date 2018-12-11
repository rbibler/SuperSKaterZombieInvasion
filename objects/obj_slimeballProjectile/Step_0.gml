/// @description Insert description here
// You can write your code in this editor
var myHeight = bbox_bottom - bbox_top;
if(ySpeed >= myHeight) {
	ySpeed = myHeight - 1;
}

scr_MoveAndCollide();

if(grounded) {
	instance_destroy();
}