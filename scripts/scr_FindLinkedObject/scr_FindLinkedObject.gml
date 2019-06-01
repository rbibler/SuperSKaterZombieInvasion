/// This is a script that helps an object find another object it's linked to.
/// @arg linkedObjectType
/// @arg linkKey

var linkedObjectType = argument0;
var linkKey = argument1;

if(instance_exists(linkedObjectType)) {
	var instanceCount = instance_number(linkedObjectType);
	var i = 0;
	var objToTest = noone;
	for(i = 0; i < instanceCount; i++) {
		objToTest = instance_find(linkedObjectType, i);
		if(objToTest.objectLinkKey != undefined) {
			if(objToTest.objectLinkKey == linkKey) {
				return objToTest;
			}
		}
	}
}
return noone;