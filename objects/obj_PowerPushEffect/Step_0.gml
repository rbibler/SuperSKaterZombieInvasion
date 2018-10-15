/// @description Insert description here
// You can write your code in this editor
if(running) {
	visible = true;
	scr_UpdateStateAnimation(anim);
	if(anim.isDone) {
		running = false;
		anim.currentIndex = 0;
		visible = false;
	}
}