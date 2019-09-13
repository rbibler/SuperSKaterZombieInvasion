/// This is a script that helps the skater spawn the blast effect for his tricks
/// @arg trick
/// @arg xPos
/// @arg yPos

var trick = argument0;
var xPos = argument1;
var yPos = argument2;


switch(trick) {
	case KICKFLIP:
		scr_SpawnTrickBlastProjectile(25, 0);
	break;
	case IMPOSSIBLE:
		scr_SpawnImpossibleTrickBlast();
	break;
}

