
var xPos = argument0;
var yPos = argument1;
var trickParams = scr_GetTrickBlastParams(MCTWIST);
var blast = instance_create_layer(xPos, yPos, PLAYER_LAYER, obj_TrickBlast);
with(blast) {
	blast.blastRadius = trickParams[TRICK_BLAST_RADIUS_INDEX];
	blast.blastDuration = trickParams[TRICK_DURATION_INDEX];
	blast.sprite_index = trickParams[TRICK_SPRITE_INDEX];
	blast.blastPower = trickParams[TRICK_BLAST_POWER_INDEX];
	blast.xSpeed = trickParams[TRICK_BLAST_X_SPEED_INDEX];
	blast.ySpeed = trickParams[TRICK_BLAST_Y_SPEED_INDEX];
}