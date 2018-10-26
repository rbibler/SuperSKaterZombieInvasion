/*
Adapted from PixealatedPope's tutorial: 
	https://www.reddit.com/r/gamemaker/comments/353aq6/tutorialexample_finite_state_machines_the_most/
*/

if(stateNext != state) {
  state = stateNext;
  stateTimer = 0;
  stateNew = true;
} else {
  stateTimer++;
  stateNew = false;
}

ignoreSwitch = false;

