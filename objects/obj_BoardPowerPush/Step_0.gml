/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
//x = obj_skater.x;
//y = obj_skater.y;

if(state == WEAPONSTATES.FIRING) {
	visible = true;
	scr_UpdateStateAnimation(attackEffectAnimation);
	if(attackEffectAnimation.isDone) {
		state = WEAPONSTATES.IDLE;
		attackEffectAnimation.currentIndex = 0;
		visible = false;
		attackEffectAnimation.isDone = false;
	}
}