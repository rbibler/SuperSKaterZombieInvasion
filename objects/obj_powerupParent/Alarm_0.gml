/// @description Insert description here
// You can write your code in this editor
alarm[0] = refuelTime;
fuelRemaining += refuelAmount;
if(fuelRemaining >= maxFuel) {
	fuelRemaining = maxFuel;
}