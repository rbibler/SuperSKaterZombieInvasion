/// This is a script that helps the skater determine if he's been hit by an enemy

var hitList = ds_list_create();
var enemyHits = instance_place_list(x, y, obj_enemyParent, hitList, false);
if(enemyHits > 0) {
	var enemyThatHitMe = hitList[| 0];
	if(enemyThatHitMe.isDangerous) {
		ds_list_destroy(hitList);
		return enemyThatHitMe;
	}
}
ds_list_destroy(hitList);
return noone;