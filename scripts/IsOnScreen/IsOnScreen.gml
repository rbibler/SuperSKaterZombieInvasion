var cam = view_camera[0];
var screenX = camera_get_view_x(cam);
var screenY = camera_get_view_y(cam);
var width = camera_get_view_width(cam);
var height = camera_get_view_height(cam);

if(x >= screenX and x <= screenX + width) {
	if(y >= screenY and y <= screenY + height) {
		return true;
	}
}

return false;