/// @description Insert description here
// You can write your code in this editor
aliveCounter++;
if(aliveCounter >= aliveTime) {
	ammoParent.ammoOnScreen--;
	scr_ProjectileDestroyScript();
}
xSpeed = ammoSpeed * ammoDirection;
x += xSpeed;
y += ySpeed;