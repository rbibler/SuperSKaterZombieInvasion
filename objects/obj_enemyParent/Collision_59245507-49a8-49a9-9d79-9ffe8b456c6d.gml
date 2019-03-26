/// @description Insert description here
// You can write your code in this editor
var shouldDestroy = script_execute(hitByAmmoScript, other);
if(shouldDestroy) {
	with(other) {
		destroyNext = true;
	}
}
