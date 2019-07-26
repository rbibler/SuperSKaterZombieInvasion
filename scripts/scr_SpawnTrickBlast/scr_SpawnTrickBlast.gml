/// This is a script that helps the skater spawn the blast effect for his tricks
/// @arg trick
/// @arg xPos
/// @arg yPos

var trick = argument0;
var xPos = argument1;
var yPos = argument2;

var trickParams = scr_GetTrickBlastParams(trick);
var blast = instance_create_layer(xPos, yPos, PLAYER_LAYER, obj_TrickBlast);
with(blast) {
	blast.blastRadius = trickParams[TRICK_BLAST_RADIUS_INDEX];
	blast.blastDuration = trickParams[TRICK_DURATION_INDEX];
	blast.sprite_index = trickParams[TRICK_SPRITE_INDEX];
}