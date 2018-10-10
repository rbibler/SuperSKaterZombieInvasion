/// This is a script that helps an object add a script to an animation so that the script can be executed at a specific time
/// @arg anim
/// @arg frame
/// @arg script

var anim = argument0;
var frame = argument1;
var script = argument2;

anim.scripts[frame] = script;