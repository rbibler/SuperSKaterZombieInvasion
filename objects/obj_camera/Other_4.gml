/// @description Insert description here
// You can write your code in this editor
view_enabled = true;
view_visible[0] = true;

camera = camera_create_view(
		0, 
		0, 
		cameraWidth, 
		cameraHeight
	);
	
view_set_camera(0, camera);

view_set_surface_id(0, application_surface);
view_set_wport(0, 1280);
view_set_hport(0, 720);
shouldScrollHoriz = true;

if(instance_exists(obj_skater)) {
	x = obj_skater.x - anchorWidth;
}