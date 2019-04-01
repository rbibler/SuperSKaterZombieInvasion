/// @description Insert description here
// You can write your code in this editor

var camX = camera_get_view_x(view_camera[0]);

//layer_x("BGLayer0", camX / 8);
//layer_x("BGLayer1", camX / 8);
//layer_x("BGLayer2", camX / 1.25);
//layer_x("BGLayer3", camX);


var i = 0; 
for(i = 0; i < numBgLayers; i++) {
	if(bgLayerSpeeds[i] != -99) {
		layer_x(bgLayers[i], camX * bgLayerSpeeds[i]);
	}
} 

