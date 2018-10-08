///playerDrawResourceIcons();

var Width = display_get_gui_width();
var Height = display_get_gui_height();
var resIconBorder = 24;
var _xBase = Width - (resIconBorder * 2);
var _yBase = (resIconBorder * 2);
var _textShadow = 2;
var _textScale = 1;
var iconAlpha = 1;
var iconScale = 0.5;
var _yStart = _yBase;

//Find Values
for (var i = 0; i < resourceCount; i ++)
    {
        resourceAmount[0] = resMap[? Resources.woodenPlanks];
    }

draw_set_font(fontResIcon);
    
//First Calculation of Positions Only
for (var i = 0; i < resourceCount; i ++)
    {
        var _textWidth = (string_width(string(resourceAmount[i])) * 1.15) * (_textScale);
        var _textHeight = (string_height(string(resourceAmount[i])) * 1.15) * (_textScale);
        var _Text = string(resourceAmount[i]);

        var xIcon = _xBase - (_textWidth) - (sprite_get_width(sprResourceIcons) * 0.45);
        var yIcon = _yBase + (sprite_get_width(sprResourceIcons) * 0.15);
        
        _yBase += (_textHeight * 1.05);
    }

//Initialize Colours    
var _Mix = sin_move(0, 1, 4, 0);
var _Colour = merge_colour(c_white, c_ltgray, _Mix);
var _Colour2 = merge_colour(c_ltgray, c_white, _Mix);

//Initialize Rectangle
var x1Est = xIcon - (sprite_get_width(sprResourceIcons) * 0.2) - resIconBorder;
var y1Est = _yStart - resIconBorder;
var x2Est = _xBase + resIconBorder;
var y2Est = _yBase + resIconBorder * 1.25;

//Draw Rectangle Surrounding Icons
draw_set_alpha(0.35);
draw_set_colour(c_dkgray);
draw_rectangle(x1Est, y1Est, x2Est, y2Est, false);
draw_set_alpha(0.75);
draw_set_colour(c_black);
draw_rectangle_width(x1Est, y1Est, x2Est, y2Est, 4);

//Revert
var _yBase = _yStart;

//Draw Icons + Values
for (var i = 0; i < resourceCount; i ++)
    {
        draw_set_halign(fa_right);
        draw_set_valign(fa_top);
        draw_set_alpha(iconAlpha);
        draw_set_font(fontResIcon);

        var _textWidth = (string_width(string(resourceAmount[i])) * 1.15) * (_textScale);
        var _textHeight = (string_height(string(resourceAmount[i])) * 1.15) * (_textScale);
        var _Text = string(resourceAmount[i]);

        draw_set_colour(_Colour);
        draw_text_transformed(_xBase, _yBase, _Text,  _textScale * resTextScale[i],  _textScale * resTextScale[i], 0);
        draw_set_colour(_Colour2);
        draw_text_transformed(_xBase - _textShadow, _yBase - _textShadow, _Text, _textScale * resTextScale[i], _textScale * resTextScale[i], 0);
        
        var xIcon = _xBase - (_textWidth) - (sprite_get_width(sprResourceIcons) * 0.45);
        var yIcon = _yBase + (sprite_get_width(sprResourceIcons) * 0.15);
        
        draw_sprite_ext(sprResourceIcons, i, xIcon + _textShadow, yIcon + _textShadow, iconScale, iconScale, 0, c_black, iconAlpha * 0.5);
        draw_sprite_ext(sprResourceIcons, i, xIcon, yIcon, iconScale, iconScale, 0, c_white, iconAlpha);
        
        _yBase += (_textHeight * 1.05);
        
         resTextScale[i] = lerp(resTextScale[i], 1, 0.1);
    }
