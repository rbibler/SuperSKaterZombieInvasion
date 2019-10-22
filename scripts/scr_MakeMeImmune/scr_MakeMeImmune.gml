/// This is a script that makes the skater immune for a set length of time
/// @arg immunityTimeInFrames

var immunityTimeInFrames = argument0;

alarm[IMMUNITY_ALARM] = immunityTimeInFrames;
isImmune = true;