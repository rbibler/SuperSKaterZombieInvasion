if(object_index != obj_GameRunner) {
	if(instance_exists(obj_GameRunner)) {
		with(instance_find(obj_GameRunner, 0)) {
			scr_EnterDebugConsoleMode();
		}
	}
} else {
	scr_PauseGame();
	instance_activate_object(obj_DebugConsole);
	with(instance_find(obj_DebugConsole, 0)) {
		alarm[0] = 1;
	}
	state = DEBUG_CONSOLE_MODE;
}