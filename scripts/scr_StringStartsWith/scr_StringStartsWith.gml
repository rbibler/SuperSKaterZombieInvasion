/// This is a script that helps an object determine if a string starts with a specific other string
/// @arg startsWith
/// @arg toCheck
/// @arg caseInsensitive

var startsWith = argument0;
var toCheck = scr_StringTrim(argument1);
var caseInsensitive = argument2;
var pos = string_pos(startsWith, toCheck);
if(string_pos(startsWith, toCheck) == 1) {
	return true;
} else if(caseInsensitive) {
	if(string_pos(string_lower(startsWith), string_lower(toCheck)) == 1) {
		return true;
	}
} else {
	return false;
}