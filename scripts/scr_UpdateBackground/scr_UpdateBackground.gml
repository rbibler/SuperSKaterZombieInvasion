var camX = argument0;

//layer_x("BGLayer0", camX / 8);
//layer_x("BGLayer1", camX / 8);
//layer_x("BGLayer2", camX / 1.25);
//layer_x("BGLayer3", camX);

if(instance_exists(obj_BGManager)) {
	with(instance_find(obj_BGManager, 0)) {
		var i = 0; 
		for(i = 0; i < numBgLayers; i++) {
			if(bgLayerSpeeds[i] != -99) {
				layer_x(bgLayers[i], camX * bgLayerSpeeds[i]);
			}
		} 
	}
}
