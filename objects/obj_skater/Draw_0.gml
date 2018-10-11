/// @description Insert description here
// You can write your code in this editor
//with(obj_camera) {
	//CameraUpdate();
//}


if(isImmune) {
	if(frameTimer mod 5 == 0) {
		drawToggle = !drawToggle;
	}
} else {
	drawToggle = true;
}

if(drawToggle) {
	draw_self();
	if(currentArmsAnim != noone) {
		if(currentArmsAnim.sprite_index != noone) {
			draw_sprite_ext(currentArmsAnim.sprite_index, currentArmsAnim.currentIndex, x, y, image_xscale, image_yscale, 1, c_white, 1);
		}
	}
}

if(global.debug == true) {
	var xStart = tileColliderX * 16;
	var yStart = tileColliderY * 16;
	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, c_red);
}
