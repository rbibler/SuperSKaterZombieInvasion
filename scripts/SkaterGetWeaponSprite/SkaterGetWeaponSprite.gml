/// Simple script to retrieve the appropriate sprite for the skater's current weapon
/// @arg skaterState
/// @arg currentWeapon

var state = argument0;
var weapon = argument1;

switch(state) {
	case idleState:
		switch(weapon.object_index) {
			case obj_Slingshot:
				return spr_SkaterIdleSlingshot;
			case obj_BoardPowerPush:
				return spr_SkaterPowerPush;	
		}
	break;
	case skateState:
		switch(weapon.object_index) {
			case obj_Slingshot:
				return spr_SkaterSkateSlingshot;
			case obj_BoardPowerPush:
				return spr_SkaterPowerPush;	
		}
	break;
	case jumpState:
		switch(weapon.object_index) {
			case obj_Slingshot:
				return spr_SkaterJumpSlingshot;
			case obj_BoardPowerPush:
				return spr_SkaterPowerPush;		
		}
	break;
	case bounceState:
		switch(weapon.object_index) {
			case obj_Slingshot:
				return spr_SkaterJumpSlingshot;
			case obj_BoardPowerPush:
				return spr_SkaterPowerPush;	
		}
	break;
	case crouchState:
		switch(weapon.object_index) {
			case obj_Slingshot:
				return spr_SkaterCrouchSlingshot;
			case obj_BoardPowerPush:
				return spr_SkaterCrouch;
		}
	break;
	case climbState:
		switch(weapon.object_index) {
			case obj_Slingshot:
				return spr_SkaterIdleSlingshot;
		}
	break;
	case fallState:
		switch(weapon.object_index) {
			case obj_Slingshot:
				return spr_SkaterJumpSlingshot;
			case obj_BoardPowerPush:
				return spr_SkaterPowerPush;		
		}
	break;
	case rollingState:
		switch(weapon.object_index) {
			case obj_Slingshot:
				return spr_SkaterIdleSlingshot;
			case obj_BoardPowerPush:
				return spr_SkaterPowerPush;	
		}
	break;
}