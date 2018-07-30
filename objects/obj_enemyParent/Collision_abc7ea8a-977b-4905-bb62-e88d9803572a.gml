/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

if(state == stateHit or state == stateDead) {
	return;
}

if(other.sprite_index != spr_SkaterBoardswing) {
	with(other) {
		if(state != knockedBackState and !isImmune) {
			stateVar[0] = sign(x - other.x);
			stateSwitch("KNOCKED BACK");
			health -= other.hitPoints;
			isImmune = true;
			immuneStart = frameTimer;
		}
	}
}