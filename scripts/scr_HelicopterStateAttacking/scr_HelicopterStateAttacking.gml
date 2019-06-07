/// @description Insert description here
// You can write your code in this editor

var lastBombTime = stateVar[0];
var lastAutoDrop = stateVar[1];

var skater = instance_find(obj_skater, 0);
var distToSkater = skater.x - x;

x += distToSkater / 16;

var bombDropIntervalFrames = bombDropIntervalSeconds * room_speed;
var dropItLikeItsHot = false;
if(stateTimer - lastBombTime >= bombDropIntervalFrames) {
	dropItLikeItsHot = true;
}

if(abs(distToSkater) <= minBombDropDistance and (stateTimer - lastAutoDrop >= bombDropIntervalFrames)) {
	dropItLikeItsHot = true;
	lastAutoDrop = stateTimer;
}

if(dropItLikeItsHot) {
	lastBombTime = stateTimer;
	scr_DropItLikeItsHot();
}

stateVar[0] = lastBombTime;
stateVar[1] = lastAutoDrop;