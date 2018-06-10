/// Simple script to retrieve the appropriate sprite for the skater's current weapon
/// @arg skaterState
/// @arg currentWeapon

var state = argument0;
var weapon = argument1;

switch(state) {
	case idleState:
		switch(weapon.object_index) {
			case obj_slingshot:
				return spr_SkaterIdleSlingshot;
			case obj_boardSwing:
				return spr_SkaterBoardswing;		
		}
	break;
	case skateState:
		switch(weapon.object_index) {
			case obj_slingshot:
				return spr_SkaterSkateSlingshot;
			case obj_boardSwing:
				return spr_SkaterBoardswing;
		}
	break;
	case jumpState:
		switch(weapon.object_index) {
			case obj_slingshot:
				return spr_SkaterJumpSlingshot;
			case obj_boardSwing:
				return spr_SkaterBoardswing;	
		}
	break;
	case crouchState:
		switch(weapon.object_index) {
			case obj_slingshot:
				return spr_SkaterCrouchSlingshot;
		}
	break;
	case climbState:
		switch(weapon.object_index) {
			case obj_slingshot:
				return spr_SkaterIdleSlingshot;
		}
	break;
	case fallState:
		switch(weapon.object_index) {
			case obj_slingshot:
				return spr_SkaterJumpSlingshot;
			case obj_boardSwing:
				return spr_SkaterBoardswing;	
		}
	break;
	case rollingState:
		switch(weapon.object_index) {
			case obj_slingshot:
				return spr_SkaterIdleSlingshot;
			case obj_boardSwing:
				return spr_SkaterBoardswing;
		}
	break;
}