/// This is a script that helps the skater calculate how long he has before he should teeter on a rail.
var teeterInterval = baseTeeterInterval;
if(abs(xSpeed) != maxSpeedX) {
	teeterInterval = baseTeeterInterval - (baseTeeterInterval * (abs(xSpeed) / maxSpeedX));
} else {
	teeterInterval = baseTeeterInterval / 2;
}
if(xSpeed == 0) {
	teeterInterval = baseTeeterInterval / 2;
}
return teeterInterval * room_speed;