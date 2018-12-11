/// This is a script that lets the skater pick up objects like Powerups. Well, only powerups.
/// @arg powerUpObject


var powerUp = argument0;

switch(powerUp.powerUpType) {
	case HEALTH:
		scr_HealthPlease(powerUp.powerUpHealthBenefit);
		if(powerUp.powerUpInfectionCure) {
			infected = false;
		}
		if(infected) {
			infectionRate += powerUp.powerUpInfectionDecrease;
		}
		if(powerUp.powerUpCausesInfection) {
			infected = true;
		}
		score += powerUp.powerUpPoints;
	break;
}