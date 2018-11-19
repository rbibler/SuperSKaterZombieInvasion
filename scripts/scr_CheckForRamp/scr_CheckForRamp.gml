/// This is a script that helps the skater determine if he should get some air

var onSlopeTile = scr_OnSlopeTile();
var retValue = false;
if(!onSlopeTile && wasOnSlopeTile) {
	if(scr_IsOnRampBoostTile() != noone) {
		retValue = true;
	}
}
wasOnSlopeTile = onSlopeTile;
return retValue;