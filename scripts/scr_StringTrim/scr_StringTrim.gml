/// This is a script that helps an object trim the whitespace from a string
/// @arg stringToTrim

var stringToTrim = argument0;
/*var i = 0;
var curChar = 0;
for(i = 0; i < string_length(stringToTrim); i++) {
	curChar = string_char_at(stringToTrim, i);
	if(curChar == 
}*/
stringToTrim = string_replace_all(stringToTrim, " ", "");
return stringToTrim;