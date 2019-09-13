/// This is a script that helps the skater peek a value from his input buffer
/// @arg howManySpots

var howManySpots = argument0;
if(howManySpots >= inputQueueCapacity) {
	return 1 << 11;
}
var index = inputQueueWritePos - 1 - howManySpots;
if(index < 0) {
	index = inputQueueCapacity + index;
}
if(index >= inputQueueCapacity) {
	show_debug_message("there's a problem");
}
return inputQueue[index];