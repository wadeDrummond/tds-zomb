///playerDrawGUITime();

var Width = display_get_gui_width();
var Height = display_get_gui_height();
var _overallScale = hudScale;
var textShadowLength = 4 * _overallScale;

var xPos = Width - 16;
var yPos = Height - 16;

draw_set_font(fontTime);
var boxBorder = 8;
var textWidth = (string_width(timeString) + textShadowLength) * _overallScale;
var textHeight = (string_height(timeString) + textShadowLength) * _overallScale;

var x1 = xPos - textWidth - boxBorder;
var y1 = yPos - textHeight - boxBorder;
var x2 = xPos + boxBorder;
var y2 = yPos + boxBorder;

draw_set_alpha(0.75);
draw_set_colour(c_black);
draw_rectangle(x1, y1, x2, y2, false);
draw_rectangle_width(x1, y1, x2, y2, 6); 
draw_set_alpha(1);

draw_set_font(fontTime);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

var Mix = sin_move(0, 1, 6, 0);
var timeColour = merge_colour(c_red, c_purple, Mix);
var darkTimeColour = merge_colour(merge_colour(c_purple, c_red, Mix), c_black, 0.65);

draw_set_colour(darkTimeColour);
draw_text_transformed(xPos + (textShadowLength / 2), yPos + (textShadowLength / 2), timeString, _overallScale, _overallScale, 0);
draw_set_colour(timeColour);
draw_text_transformed(xPos - (textShadowLength / 2), yPos - (textShadowLength / 2), timeString, _overallScale, _overallScale, 0);
