/// This is a script that helps an object get a specifc parameter for a trick
/// @arg trick
/// @arg paramToGet

var trick = argument0;
var paramToGet = argument1;

var params = scr_GetTrickBlastParams(trick);
return params[paramToGet];
