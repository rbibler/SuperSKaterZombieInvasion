/// @description Insert description here
// You can write your code in this editor
var curX = xstart;
var curY = ystart;



var i = 0;
for(i = 0; i < numBlocks; i++) {
	blocks[i] = instance_create_layer(curX, curY, BLOCKS_LAYER, obj_conveyorBlock);
	blocks[i].conveyorDirection = conveyorDirection
	blocks[i].conveyorSpeed = conveyorSpeed;
	curX += 16;
}