/// @description Insert description here
// You can write your code in this editor
aliveCounter++;
if(aliveCounter >= aliveTime) {
	ammoParent.ammoOnScreen--;
	instance_destroy();
}

x += ammoSpeed * ammoDirection;