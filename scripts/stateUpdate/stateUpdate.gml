/*
Adapted from PixealatedPope's tutorial: 
	https://www.reddit.com/r/gamemaker/comments/353aq6/tutorialexample_finite_state_machines_the_most/
*/

if(state_next != state)
{
  state=state_next;
  state_timer=0;
  state_new=true;
}
else
{
  state_timer++;
  state_new=false;
}

