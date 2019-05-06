show_debug_message("Frame: " + string(frameTimer));
if(instance_exists(obj_camera)) {
	with(instance_find(obj_camera, 0)) {
		scr_TrackTheSkater();
	}
}