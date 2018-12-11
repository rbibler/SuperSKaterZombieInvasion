var spawnPoints = instance_number(obj_skaterSpawn);
var spawnPoint = noone;
for(var i = 0; i < spawnPoints; i++) {
	spawnPoint = instance_find(obj_skaterSpawn, i);
	if(spawnPoint.objectLinkKey == exitKey) {
		x = spawnPoint.x;
	}
}

newRoom = false;