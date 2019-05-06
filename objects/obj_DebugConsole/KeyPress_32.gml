/// @description Insert description here
// You can write your code in this editor
if(!global.gamePaused) {
	global.gamePaused = true;
	state = DC_IDLE;
	
	if(!sprite_exists(screenshot)){
	    screenshot = sprite_create_from_surface(application_surface,0,0,view_wport,view_hport,0,0,0,0);    
	}

	instance_deactivate_all(true);
	instance_activate_object(obj_camera);
	instance_activate_object(obj_KeyboardController);
	visible = true;
		
}