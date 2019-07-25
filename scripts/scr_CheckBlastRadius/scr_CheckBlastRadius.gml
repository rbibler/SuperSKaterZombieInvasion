var trick = argument0;
var currentFrame = argument1;
var animSpeed = argument2;
var frameWithinAnimm = argument3;

var startRadius = trickBlastRadii[trick, currentFrame];
var endRadius = trickBlastRadii[trick, currentFrame + 1];

var blastRadius = scr_InterpolateBlastRadii(startRadius, endRadius, frameWithinAnim, animSpeed);