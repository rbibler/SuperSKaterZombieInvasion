/// This is a script that helps the GUI display the player's current diamond count

var diamondCount = global.diamondCount;
var ones = diamondCount mod 10;
var tens = floor(diamondCount / 10);
DisplaySpriteAtGrid(spr_galacticDiamond, 0, 11, 2.5, 2, 2);
DisplaySpriteAtGrid(spr_numbersBig, tens, 12, 3.25, 1, 1);
DisplaySpriteAtGrid(spr_numbersBig, ones, 12.5, 3.25, 1, 1);