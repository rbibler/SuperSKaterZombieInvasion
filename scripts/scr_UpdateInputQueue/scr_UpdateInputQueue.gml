/// This is a script that helps the skater update his input queue

// Input will be stored in 10 bits like this:
// A T J S ST SL D U R L

var curInput = 0;
for(var i = 0; i < NUM_INPUTS; i++) {
	curInput |= input[i] << i;
}

scr_BufferPut(curInput);