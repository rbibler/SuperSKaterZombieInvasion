/// @description Insert description here
// You can write your code in this editor
if(armed) {
	var objToTrigger = noone;
	var tempObj = noone;
	for(i = 0; i < instance_number(objectToTrigger); i++) {
		tempObj = instance_find(objectToTrigger, i);
		if(tempObj.objectLinkKey = objectLinkKey) {
			objToTrigger = tempObj;
			break;
		}
	}
	if(objToTrigger != noone) {
		with(objToTrigger) {
			script_execute(triggerControlScript);
		}
		armed = false;
	}
	
}