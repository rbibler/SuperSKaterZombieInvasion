/// This is a script that helps an enemy determine if it's dangerous.

var dangerous = true;
if(ds_list_find_index(dsHarmlessStates, stateID) != -1) {
	dangerous = false;
}
return dangerous;