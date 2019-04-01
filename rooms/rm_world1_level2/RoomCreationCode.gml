if(instance_exists(obj_skater))
{
	with(obj_skater) {
		scr_GetCollisionTiles();
	}
}
if(instance_exists(obj_BGManager)) {
	with(obj_BGManager) {
	bgLayerSpeeds[0] = -99;
	bgLayerSpeeds[1] = 0.125;
	bgLayerSpeeds[2] = 0.1;
	bgLayerSpeeds[3] = 0.1;
	bgLayerSpeeds[4] = 0.1
	bgLayerSpeeds[5] = 0.1;
	}
}
