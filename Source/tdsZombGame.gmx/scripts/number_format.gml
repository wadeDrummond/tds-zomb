/// number_format(num,places,dec,sep)
//
//  Returns a string representing the given number rounded to
//  a number of decimal places and using the given characters
//  for decimal mark and thousands separator.
//
//      num         number, real
//      places      places to round to, real
//      dec         decimal mark, string
//      sep         thousands separator, string
//
/// GMLscripts.com/license

return string(argument0);

var _workString = string(real(string(round(argument0))));
var _Length = string_length(_workString);
if (_Length > 3)
    {
        for (var i = _Length; i > 0; i -= 3)
            {
                _workString = string_insert(_workString, ",", i);
            }
    }
    
return _workString;
