/// This is a script that helps the GUI display the player's current lives

var livesCount = lives;
var ones = livesCount mod 10;
var tens = floor(livesCount / 10);
DisplaySpriteAtGrid(spr_numbersBig, tens, 23, 1, 1, 1);
DisplaySpriteAtGrid(spr_numbersBig, ones, 24, 1, 1, 1);