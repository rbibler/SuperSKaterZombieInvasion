/// This is a script that returns the sub image within the health bar that corresponds to the players health


// Health = 51; 60 - 51 = 9 / 10 = 0;
// health = 43; 60 - 43 = 17 / 10 = 1;
var healthDecile = floor((100 - health) / 10);
return healthDecile;
