if(instance_exists(obj_skater))
{
	with(obj_skater) {
		scr_GetCollisionTiles();
	}
}
if(instance_exists(obj_BGManager)) {
	with(obj_BGManager) {
	bgLayerSpeeds[0] = -99;
	bgLayerSpeeds[1] = -99;
	bgLayerSpeeds[2] = 0.5;
	bgLayerSpeeds[3] = 0.6;
	bgLayerSpeeds[4] = .899;
	bgLayerSpeeds[5] = .899
	bgLayerSpeeds[6] = .9;
	}
}
