/// This is a script that helps the GUI display the player's current diamond count

var diamondCount = global.diamondCount;
var ones = diamondCount mod 10;
var tens = floor(diamondCount / 10);
DisplaySpriteAtGrid(spr_numbersBig, tens, 23, 3, 1, 1);
DisplaySpriteAtGrid(spr_numbersBig, ones, 24, 3, 1, 1);