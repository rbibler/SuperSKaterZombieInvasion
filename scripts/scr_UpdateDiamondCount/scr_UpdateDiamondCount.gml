var amountToChange = argument0;

global.juice += amountToChange;

if(global.juice < 0) {
	global.juice = 0;
}

if(global.juice > 100 or global.godmode) {
	global.juice = 100;
}

