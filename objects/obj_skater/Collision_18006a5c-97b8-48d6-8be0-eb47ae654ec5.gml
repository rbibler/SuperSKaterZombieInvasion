/// @description Insert description here
// You can write your code in this editor
if(!scr_CheckForShieldProtection(other) and !isImmune) {
	scr_SkaterHit(other, 0);
}

with(other) {
	script_execute(struckSkaterScript);
}