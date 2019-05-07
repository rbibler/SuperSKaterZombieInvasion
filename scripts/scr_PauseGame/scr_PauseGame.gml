if(instance_exists(obj_GameRunner)) {
	with(instance_find(obj_GameRunner, 0)) {
		global.gamePaused = true;
		visible = true;
		if(!sprite_exists(screenshot)){
		    screenshot = sprite_create_from_surface(application_surface,0,0,view_wport,view_hport,0,0,0,0);    
		}
		
		instance_deactivate_all(true);
		instance_activate_object(obj_camera);
		if(instance_exists(obj_DebugConsole) and global.debug) {
			instance_activate_object(obj_DebugConsole);
			with(instance_find(obj_DebugConsole, 0)) {
				alarm[0] = 1;
			}
		}
	}
}

