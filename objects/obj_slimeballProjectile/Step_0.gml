/// @description Insert description here
// You can write your code in this editor
ySpeed += myGravity;

MoveAndCollide();
GeneralCheckGrounded();

if(grounded) {
	if(!place_meeting(x, y + 5, obj_enemyPuddle)) {
		var puddle = instance_create_layer(x, y, "Enemies", obj_enemyPuddle);
		var bboxTile = floor((bbox_bottom + ySpeed) / 16);
		bboxTile *= 16;
		with(puddle) {
			y = bboxTile + 16;
			currentImage = other.size;
		}
	} else {
		with(instance_place(x, y + 5, obj_enemyPuddle)) {
			currentImage += other.size + 1;
			if(currentImage >= totalImages) {
				currentImage--;
			}
			sprite_index = images[currentImage];
		}
	}
	instance_destroy();
}