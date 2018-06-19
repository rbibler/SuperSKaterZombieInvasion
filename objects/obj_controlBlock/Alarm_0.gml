/// @description Insert description here
// You can write your code in this editor
var i = 0;
var obj = noone;
for(i = 0; i < instance_number(objectToControl); i++) {
	obj = instance_find(objectToControl, i);
	if(obj.objectLinkKey = objectLinkKey) {
		objectToControl = obj;
		break;
	}
}