/// @description Insert description here
// You can write your code in this editor
//with(obj_camera) {
	//CameraUpdate();
//}

var color = c_white;


if(global.debug == true) {
	var xStart = tileColliderX * 16;
	var yStart = tileColliderY * 16;
	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, c_red);
	/*switch(stateID) {
		case s_IDLE:
			color = c_white;
		break;
		case s_MOVING:
			color = c_blue;
		break;
		case s_JUMPING:
			color = c_green;
		break;
		case s_FALLING:
			color = c_red;
		break;
		case s_CROUCHING:
			color = c_yellow;
		break;
		case s_HIT:
		break;
		case s_DEAD:
		break;
	}*/
	if(!grounded) {
		color = c_red;
	}
}

if(isImmune) {
	if(frameTimer mod 5 == 0) {
		drawToggle = !drawToggle;
	}
} else {
	drawToggle = true;
}

if(drawToggle) {
	draw_sprite_ext(sprite_index, image_index, round(x) + drawOffsetX, round(y) + drawOffsetY, image_xscale, image_yscale, 0, color, 1);
}




