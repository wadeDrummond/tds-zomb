///drawHealthbar(xOffset, yOffset, Width, Height, minColour, maxColour, Value);

var _xOffset = argument0;
var _yOffset = argument1;
var _barWidth = argument2;
var _barHeight = argument3;
var _minColour = argument4;
var _maxColour = argument5;
var _Value = argument6;

var _x1 = x - view_xview - _barWidth/2 + _xOffset;
var _y1 = y - view_yview + _yOffset;
var _x2 = x - view_xview + _barWidth/2 + _xOffset;
var _y2 = y - view_yview + _barHeight + _yOffset;


draw_healthbar(_x1, _y1, _x2, _y2, _Value, c_black, _minColour, _maxColour, 0, true, true);
