
var jetSkiObject = argument0;
if(canBoardVehicle and (currentVehicle == NO_VEHICLE or (currentVehicle == JET_SKI and !scr_OnTheJetSki()))) {
	currentVehicle = JET_SKI;
	scr_StateSwitch(s_JET_SKI_IDLE);
	//x = jetSkiObject.x;
	y = jetSkiObject.y;
	with(jetSkiObject) {
		instance_destroy();
	}
}