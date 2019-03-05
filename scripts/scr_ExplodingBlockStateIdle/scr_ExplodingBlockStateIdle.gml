
/// This is the exploding block's idle state script
/// Exploding Block does nothing when idle, except wait

if(stateNew) {
	sprite_index = spr_explodeBlockIdle;
}

// If skater breaches the threshold, menace!
var skaterDistance = abs(obj_skater.x - x);

if(skaterDistance < attackThreshold) {
	scr_StateSwitch(s_MENACING);
}