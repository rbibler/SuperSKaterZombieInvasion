/// This is a script that returns the sub image within the health bar that corresponds to the players health

var healthPercent = health / 100;
return 20 - floor(healthPercent * 20);