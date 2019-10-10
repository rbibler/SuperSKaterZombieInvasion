/// This is a script that the Slimeball uses to decide what to do when hit by the skater (or a projectile)
/// @arg hitType
/// @arg hitPoints

var hitPoints = argument0;
var hitType = argument1;


if(!scr_AmIVulnerable()) {
	return;
}

scr_ReduceMyHealth(characterHealth + 1);

// Only need to worry about board swing. Everything kills the slimeball, but if it's airborne, and board struck, it'll fly
switch(hitType) {
	case HIT_TYPE.BOARD:
		if(!grounded) {
			xSpeed = boardSmackSpeed * obj_skater.facing;
			ySpeed = -boardSmackSpeed;
			scr_StateSwitch(s_AIRBORNE_HIT);
			break;
		}
	break;
	case HIT_TYPE.TRICK_BLAST:
		xSpeed = boardSmackSpeed * obj_skater.facing;
		ySpeed = -boardSmackSpeed;
		scr_StateSwitch(s_AIRBORNE_HIT);
	break;
			
	default:
		scr_AmIDead();
	break;
}