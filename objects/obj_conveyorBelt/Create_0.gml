/// @description Insert description here
// You can write your code in this editor
var curX = xstart;
var curY = ystart;

var i = 0;
var block = noone;
for(i = 0; i < numBlocks; i++) {
	block = instance_create_layer(curX, curY, "BLOCKS", obj_conveyorBlock);
	block.conveyorDirection = conveyorDirection
	block.conveyorSpeed = conveyorSpeed;
	curX += 16;
}