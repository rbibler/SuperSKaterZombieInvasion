/// This is a script that helps the skater determine the exact blast radius of his trick effect based on 
/// the animation frame. 
/// @arg startRadius
/// @arg endRadius
/// @arg frameWithinAnim
/// @arg animSpeed

var startRadius = argument0;
var endRadius = argument1;
var frameWithinAnim = argument2;
var animSpeed = argument3;

show_debug_message("Frame: " + string(frameWithinAnim) + " speed: " + string(animSpeed));
var percentage = frameWithinAnim / animSpeed;

return startRadius + ((endRadius - startRadius) * percentage);