if(instance_exists(obj_skater))
{
	with(obj_skater) {
		scr_GetCollisionTiles();
	}
}
if(instance_exists(obj_BGManager)) {
	with(obj_BGManager) {
	bgLayerSpeeds[0] = -99;		// Yacht and sailboat
	bgLayerSpeeds[1] = 0.78;		// Mid range sailboats
	bgLayerSpeeds[2] = 0.83;		// far sailboats
	bgLayerSpeeds[3] = .899;	// breakwater
	bgLayerSpeeds[4] = .899;	// Harbor
	bgLayerSpeeds[5] = .9		// clouds
	bgLayerSpeeds[6] = .9;		// sun
	}
}
