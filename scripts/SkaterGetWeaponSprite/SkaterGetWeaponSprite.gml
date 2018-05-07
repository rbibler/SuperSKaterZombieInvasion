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
		}
	break;
	case skateState:
		switch(weapon.object_index) {
			case obj_slingshot:
				return spr_SkaterSkateSlingshot;
		}
	break;
	case jumpState:
		switch(weapon.object_index) {
			case obj_slingshot:
				return spr_SkaterJumpSlingshot;
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
		}
	break;
	case rollingState:
		switch(weapon.object_index) {
			case obj_slingshot:
				return spr_SkaterIdleSlingshot;
		}
	break;
}