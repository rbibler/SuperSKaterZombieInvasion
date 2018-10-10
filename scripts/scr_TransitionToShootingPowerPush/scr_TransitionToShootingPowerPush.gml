var curIndex = floor(currentAnim.currentIndex);
show_debug_message("current Animation: " + currentAnim.animName + " current index " + string(curIndex));

switch(currentAnim) {
	
	case idleAnim:
		scr_SetCurrentAnimation(powerPushAnimIdle);
	break;
	case skateAnim:
		
		switch(curIndex) {
			case 0:
				scr_SetCurrentAnimation(powerPushAnimBackFoot);
			break;
			case 1:
				scr_SetCurrentAnimation(powerPushAnimFrontFootIdle);
			break;
			case 2:
				scr_SetCurrentAnimation(powerPushAnimFrontFoot);
			break; 
			case 3:
				scr_SetCurrentAnimation(powerPushAnimBackFootIdle);
			break;
			
		}
	break;
	
	case powerPushAnimIdle:
	break;
	
	case powerPushAnimDiagonal:
	break;
	
	case powerPushAnimBackFoot:
		switch(curIndex) {
			case 0:
				scr_SetCurrentAnimation(powerPushAnimBackFoot);
			break;
			case 1:
				scr_SetCurrentAnimation(powerPushAnimBackFootIdle);
			break;
			case 2:
				scr_SetCurrentAnimation(powerPushAnimFrontFoot);
			break;
			case 3:
				scr_SetCurrentAnimation(powerPushAnimBackFootIdle);
			break;
		}
	break;
	
	case powerPushAnimFrontFoot:
		switch(curIndex) {
			case 0:
				scr_SetCurrentAnimation(powerPushAnimFrontFoot);
			break;
			case 1:
				scr_SetCurrentAnimation(powerPushAnimFrontFootIdle);
			break;
		}
	break;
	
	case powerPushAnimBackFootIdle:
		switch(curIndex) {
			case 0:
				scr_SetCurrentAnimation(powerPushAnimBackFootIdle);
			break;
			case 1:
				scr_SetCurrentAnimation(powerPushAnimBackFootIdle);
			break;
			case 2:
				scr_SetCurrentAnimation(powerPushAnimFrontFootIdle);
			break;
			case 3:
				scr_SetCurrentAnimation(powerPushAnimFrontFoot);
			break;
			case 4:
				scr_SetCurrentAnimation(powerPushAnimBackFootIdle);
				currentAnim.currentIndex = 0;
			break;
		}
	break;
	
	case powerPushAnimFrontFootIdle:
		switch(curIndex) {
			case 0:
				scr_SetCurrentAnimation(powerPushAnimFrontFootIdle);
			break;
			case 1:
				scr_SetCurrentAnimation(powerPushAnimFrontFootIdle);
			break;
			case 2:
				scr_SetCurrentAnimation(powerPushAnimBackFootIdle);
			break;
		}
	break;
	
	case jumpAnim:
	break;
	
	case crouchAnim:
	break;
}