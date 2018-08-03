/// This is a script that helps the GUI display the player's current lives

var livesCount = lives;
var ones = livesCount mod 10;
var tens = floor(livesCount / 10);
DisplaySpriteAtGrid(spr_skaterHead, 0, 11, 0.5, 1, 1);
DisplaySpriteAtGrid(spr_numbersBig, tens, 12, 1.25, 1, 1);
DisplaySpriteAtGrid(spr_numbersBig, ones, 12.5, 1.25, 1, 1);