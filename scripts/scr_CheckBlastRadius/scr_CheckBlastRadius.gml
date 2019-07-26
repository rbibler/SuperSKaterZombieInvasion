/// This is a script that helps the skater determine if any enemies are within his trick blast radius
/// @arg trick
/// @arg currentAnimFrame
/// @arg animSpeed
/// @arg animSubFrame

var trick = argument0;
var currentAnimFrame = argument1;
var animSpeed = argument2;
var animSubFrame = argument3;

var startRadius = trickBlastRadii[trick, currentAnimFrame];
var endRadius = trickBlastRadii[trick, currentAnimFrame + 1];

blastRadius = scr_InterpolateBlastRadii(startRadius, endRadius, animSubFrame, animSpeed);