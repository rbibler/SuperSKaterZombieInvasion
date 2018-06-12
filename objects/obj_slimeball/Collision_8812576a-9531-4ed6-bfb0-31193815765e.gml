/// @description Insert description here
// You can write your code in this editor

if(state == stateHit or state == stateDead) {
	return;
}

if(other.sprite_index != spr_SkaterBoardswing) {
	with(other) {
		if(state != hitImmobilizedState and !isImmune) {
			stateSwitch("HIT_IMMOBILIZED");
			health -= other.hitPoints;
			isImmune = true;
			immuneStart = frameTimer;
		}
	}
}