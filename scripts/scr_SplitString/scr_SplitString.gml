/// This is a script that helps an object split a string based on a provider delimiter.
/// @arg stringToSplit
/// @arg delimieter*

var stringToSplit = argument[0];
var toLower = argument[1];
var delimiter = " ";
if(argument_count > 2) {
	delimiter = argument[2];
}

var splitString;
splitString[0] = stringToSplit;
var i = 0;
var word = "";
var curChar;
var currentToken = 0;
stringToSplit += delimiter;
var stringLength = string_length(stringToSplit);
for(i = 1; i <= stringLength; i++) {
	curChar = string_char_at(stringToSplit, i);
	if(curChar == delimiter) {
		if(string_length(word) > 0) {
			splitString[currentToken++] = toLower ? string_lower(word) : word;
			word = "";
		}
	} else {
		word += curChar;
	}
}
return splitString;