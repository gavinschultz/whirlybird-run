var number = argument[0];
var width = argument[1];

var numstring = string(number);
var strlen = string_length(numstring);
if (strlen >= width)
    return numstring;
numstring = string_repeat('0', width - strlen) + numstring;
return numstring;
