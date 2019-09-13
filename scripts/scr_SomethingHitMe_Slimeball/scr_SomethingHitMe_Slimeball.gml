/// This is a script that the Slimeball uses to decide what to do when hit by the skater (or a projectile)
/// @arg hitType
/// @arg hitPoints

var hitType = argument0;
var hitPoints = argument1;

if(!scr_AmIVulnerable()) {
	return;
}

scr_ReduceMyHealth(hitPoints);

// Only need to worry about board swing. Everything kills the slimeball, but if it's airborne, and board struck, it'll fly
switch(hitType) {
	case BOARD_SWING:
		if(!grounded) {
			xSpeed = boardSmackSpeed * obj_skater.facing;
			ySpeed = -boardSmackSpeed;
			scr_StateSwitch(s_AIRBORNE_HIT);
			break;
		}
	break;
	default:
		scr_AmIDead();
	break;
}