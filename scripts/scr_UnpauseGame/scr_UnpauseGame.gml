if(instance_exists(obj_GameRunner)) {
	with(instance_find(obj_GameRunner, 0)) {
		global.gamePaused = false;
		visible = false;
		if(sprite_exists(screenshot)){
			sprite_delete(screenshot);
		}
		instance_activate_all();
	}
}