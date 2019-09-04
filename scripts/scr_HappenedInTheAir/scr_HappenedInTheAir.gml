/// This is a script that looks at some numbers and determines if the one thing happened while airborne
/// @arg whenItHappened

var whenItHappened = argument0;

return framesSinceGround > 0 and framesSinceGround > whenItHappened