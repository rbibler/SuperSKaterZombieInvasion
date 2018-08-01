/// @description Insert description here
// You can write your code in this editor
ySpeed += myGravity;
var myHeight = bbox_bottom - bbox_top;
if(ySpeed >= myHeight) {
	ySpeed = myHeight - 1;
}

MoveAndCollide();

if(grounded) {
	if(!place_meeting(x, y + 1, obj_enemyPuddle)) {
		var puddle = instance_create_layer(x, y, "Enemies", obj_enemyPuddle);
		with(puddle) {
			var tileY = floor(y / 16) * 16;
			//y = (tileY + 16) + ((y - bbox_top));
			currentImage = other.size;
		}
	} else {
		with(instance_place(x, y + 5, obj_enemyPuddle)) {
			currentImage += other.size + 1;
			if(currentImage >= totalImages) {
				currentImage--;
			}
			sprite_index = images[currentImage];
			var tileY = floor(other.y / 16) * 16;
			//y = (tileY + 16) + ((y - bbox_top));

		}
	}
	instance_destroy();
}