/// @description state_machine_init();
/// @function state_machine_init
///Initilize the variables required for the state engine.

/*
Adapted from PixealatedPope's tutorial: 
	https://www.reddit.com/r/gamemaker/comments/353aq6/tutorialexample_finite_state_machines_the_most/
*/
state = noone;
stateNext = state;
stateName = "Unknown";
stateTimer = 0;
stateMap = ds_map_create();
stateStack = ds_stack_create();
stateNew = true;
stateVar[0] = 0; //Useful for storing variables specific to a specific state.
//Add any new variables you might need for your game here.
stateCanInterrupt = true;

