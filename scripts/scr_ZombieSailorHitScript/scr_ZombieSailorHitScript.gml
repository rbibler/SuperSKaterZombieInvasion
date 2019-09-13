var hitTYpe = argument0;
var hitPower = argument1;
if(stateID != s_DEAD and stateID != s_HIT) {
	scr_StateSwitch(s_HIT);
	scr_StateUpdate();
	shouldMove = false;
	characterHealth -= hitPower;
}