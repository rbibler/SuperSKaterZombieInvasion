var amountToChange = argument0;

global.diamondCount += amountToChange;

if(global.diamondCount < 0) {
	global.diamondCount = 0;
}

if(global.diamondCount > 100) {
	global.diamondCount = 100;
}