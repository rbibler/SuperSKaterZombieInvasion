/// @description state_machine_init();
/// @function state_machine_init
///Initilize the variables required for the state engine.

/*
Adapted from PixealatedPope's tutorial: 
	https://www.reddit.com/r/gamemaker/comments/353aq6/tutorialexample_finite_state_machines_the_most/
*/
state = noone;
stateNext = state;
ignoreSwitch = false;
stateName = "Unknown";
stateTimer = 0;
stateMap = ds_map_create();
stateStack = ds_stack_create();
stateNew = true;
stateVar[0] = 0; //Useful for storing variables specific to a specific state.
stateVar[1] = 0;
stateVar[2] = 0;
stateVar[3] = 0;
stateVar[4] = 0;
stateVar[5] = 0;
stateVar[6] = 0;

//Add any new variables you might need for your game here.
stateCanInterrupt = true;

