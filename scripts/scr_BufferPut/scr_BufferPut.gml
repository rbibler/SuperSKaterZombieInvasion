/// This is script that helps an object put something in a ring buffer
/// @arg thingToPut

var thingToPut = argument0;
if(inputQueueWritePos >= inputQueueCapacity) {
	inputQueueWritePos = 0;
}
inputQueue[inputQueueWritePos] = argument0;
inputQueueWritePos++;
inputsInQueue++;
if(inputsInQueue >= inputQueueCapacity) {
	inputsInQueue = inputQueueCapacity;
}