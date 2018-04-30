/*
Adapted from PixealatedPope's tutorial: 
	https://www.reddit.com/r/gamemaker/comments/353aq6/tutorialexample_finite_state_machines_the_most/
*/

if(script_exists(state))
  script_execute(state)
else
  state_switch(ds_map_find_first(state_map));
