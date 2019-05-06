/// This is a script that helps an object split a string based on a provider delimiter.
/// @arg stringToSplit
/// @arg delimieter*

var stringToSplit = argument[0];
var delimiter = " ";
if(argument_count > 1) {
	delimiter = argument[1];
}

var splitString;
splitString[0] = stringToSplit;
var i = 0;
var startIndex = -1;
var tokenIndex = 0;
var curChar;
var stringLength = string_length(stringToSplit);
for(i = 0; i < stringLength; i++) {
	curChar = string_char_at(stringToSplit, i);
	if(curChar == delimiter) {
		if(startIndex > 0) {
			splitString[tokenIndex++] = string_copy(stringToSplit, startIndex, i);
			startIndex = i;
		} else {
			startIndex = i;
		}
	}
}
if(startIndex > 0) {
	splitString[tokenIndex] = string_copy(stringToSplit, startIndex, string_length(stringToSplit));
}
return splitString;