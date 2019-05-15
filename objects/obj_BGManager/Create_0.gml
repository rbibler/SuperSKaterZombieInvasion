/// @description Insert description here
// You can write your code in this editor
bgLayers[0] = "BGLayer0";
bgLayers[1] = "BGLayer1";
bgLayers[2] = "BGLayer2";
bgLayers[3] = "BGLayer3";
bgLayers[4] = "BGLayer4";
bgLayers[5] = "BGLayer5";
bgLayers[6] = "BGLayer6";
bgLayers[7] = "BGLayer7";
bgLayers[8] = "BGLayer8";
bgLayers[9] = "BGLayer9";


numBgLayers = array_length_1d(bgLayers);
var i = 0;
for(i = 0; i < numBgLayers; i++) {
	bgLayerSpeeds[i] = 0;
}