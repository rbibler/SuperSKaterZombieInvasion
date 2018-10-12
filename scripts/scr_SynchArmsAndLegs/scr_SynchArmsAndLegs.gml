/// This is a script that helps the skater synch his arm and leg animations when one has changed

var armsAnim = noone;
switch(currentLegsAnim) {
	case skateAnimLegs:
		armsAnim = skateAnimArms;
	break;
	
	case idleAnimLegs:
		armsAnim = idleAnimArms;
	break;
}

scr_SetCurrentArmsAnim(armsAnim, currentLegsAnim.currentIndex);