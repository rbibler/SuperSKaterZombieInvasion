/// Handles the simplest animation for the Skater

// First check to see if we're firing a weapon and get the correct sprite if so
if(weaponAnimCounter > 0) {
	var weaponSprite = SkaterGetWeaponSprite(state, currentWeapon);
	if(sprite_index != weaponSprite) {
		sprite_index = weaponSprite;
		image_index = 0;
	}
}

// Check to see if our animation time has come and advance the frame
if(stateTimer mod (60 / 5) == 0) {
	if(weaponAnimCounter > 0) {
		image_index++;
		weaponAnimCounter--;
		if(weaponAnimCounter <= 0) {
			switch(state) {
				case skateState:
					sprite_index = spr_SkaterSkate;
				break;
				case jumpState:
					sprite_index = spr_SkaterJump;
				break;
				case crouchState:
					sprite_index = spr_SkaterCrouch;
				break;
				case fallState:
					sprite_index = spr_SkaterJump;
				break;
				case rollingState:
					sprite_index = spr_SkaterIdle;
				break;		
				case climbingState:
					sprite_index = spr_SkaterIdle;
				break;
				case bounceState:
					sprite_index = spr_SkaterJump;
				break;
			}
			image_index = 0;
		}
	} else {
		image_index++;
		if(image_index >= image_number) {
			image_index = 0;
		}
	}
}