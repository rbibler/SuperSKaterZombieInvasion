if(objectToControl != noone) {
	with(objectToControl) {
		var i;
		for(i = 0; i < numBlocks; i++) {
			blocks[i].conveyorDirection = -blocks[i].conveyorDirection;
		} 
	}
}