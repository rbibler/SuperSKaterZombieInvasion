var horSpeed = 0;
var ySpeed = 0;
var angle = 0;
var angleInc = 360 / 12;
for(var i = 0; i < 12; i++) {
	angle += angleInc;
	if(angle == 0) {
		horSpeed = 0;
		ySpeed = -10;
	} else if(angle == 90) {
		horSpeed = 10;
		ySpeed = 0;
	} else if(angle == 180) {
		horSpeed = 0;
		ySpeed = 10
	} else if(angle == 270) {
		horSpeed = -10;
		ySpeed = 0;
	} else {
		horSpeed = angle > 180 ? -10 : 10;
		ySpeed = tan(degtorad(angle)) * 10;
		
	}
	scr_SpawnTrickBlastProjectile(horSpeed, ySpeed);
}