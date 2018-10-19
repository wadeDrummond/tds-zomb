///playerDrawResourceIcons();

draw_set_halign(fa_right);
draw_set_valign(fa_middle);
draw_set_font(fontResIcon);

var resourceAmount;
resourceAmount[0] = resMap[? Resources.woodenPlanks];

var resAmount = 1;

var _Width = display_get_gui_width();
var _Height = display_get_gui_height();
var _iconSprite = sprResourceIcons;
var _iconScale = 0.75;
var _textScale = 1.25;
var _overallScale = 0.5;
var _Angle = 0;
var _Blend = c_white;
var _Alpha = 1;
var _interiorBorder = 16;
var _exteriorBorder = 24
var _textBorder = 8;
var _textShadowLength = 1;
var _yAdd = 0;
var _textColour = _Blend;
var _dkTextColour = merge_colour(_Blend, c_black, 0.65);
var _iconScale = sin_move(0.95, 1, 10, 0);
var _totalIconScale = _overallScale * _iconScale;
var _totalTextScale = _overallScale * _textScale;
var _spriteWidth = sprite_get_width(_iconSprite) * _totalIconScale;
var _spriteHeight = sprite_get_height(_iconSprite) * _totalIconScale;
var _xOffset = sprite_get_xoffset(_iconSprite) * _totalIconScale;
var _yOffset = sprite_get_yoffset(_iconSprite) * _totalIconScale;
var _compensatedWidth = (_spriteWidth - _xOffset);
var _compensatedHeight = (_spriteHeight - _yOffset);
var _xSubtract = 0;
var _x1 = _Width;
var _y1 = 0;
var _x2 = _Width;
var _y2 = 0;

for (var i = 0; i < resAmount; i ++)
    {
        var _String = number_format(resourceAmount[i]);
        var _xPos = _Width - _compensatedWidth - _exteriorBorder;
        var _yPos = _compensatedHeight + _exteriorBorder + _yAdd;
        var _xTextPos = _xPos - _compensatedWidth - _textBorder;
        var _yTextPos = _yPos;
        var _textHeight = (string_height(_String) * _totalTextScale) + resTextScale[i];
        var _textWidth = (string_width(_String) * _totalTextScale) + resTextScale[i];
        var _maxHeight = max(_textHeight, (_spriteHeight * _totalIconScale));
        _yAdd += _maxHeight;
        _xSubtract = max(_xSubtract, _textWidth);
    }

var _x1 = (_xPos - _exteriorBorder - _xSubtract - _compensatedWidth);
var _y1 = (_interiorBorder);
var _x2 = (_Width - _interiorBorder);
var _y2 = (_yPos + _yAdd);

draw_set_alpha(0.35);
draw_set_colour(c_dkgray);
draw_rectangle(_x1, _y1, _x2, _y2, false);
draw_set_alpha(0.75);
draw_set_colour(c_black);
draw_rectangle_width(_x1, _y1, _x2, _y2, 4);

draw_set_alpha(_Alpha);
_yAdd = 0;
    
for (var i = 0; i < resAmount; i ++)
    {
        var _xPos = _Width - _compensatedWidth - _exteriorBorder;
        var _yPos = _compensatedHeight + _exteriorBorder + _yAdd;
        
        draw_sprite_ext(_iconSprite, 0, _xPos, _yPos, _totalIconScale, _totalIconScale, _Angle, _Blend, _Alpha);
        
        var _xTextPos = _xPos - _compensatedWidth - _textBorder;
        var _yTextPos = _yPos;
        
        var _String = number_format(resourceAmount[i]);
        draw_set_colour(_dkTextColour);
        draw_text_transformed(_xTextPos + _textShadowLength, _yTextPos + _textShadowLength, _String, _totalTextScale + resTextScale[i], _totalTextScale + resTextScale[i], _Angle);
        draw_set_colour(_textColour);
        draw_text_transformed(_xTextPos - _textShadowLength, _yTextPos - _textShadowLength, _String, _totalTextScale + resTextScale[i], _totalTextScale + resTextScale[i], _Angle);
        
        var _textHeight = (string_height(_String) * _totalTextScale);
        var _textWidth = (string_width(_String) * _totalTextScale);
        var _maxHeight = max(_textHeight, (_spriteHeight * _totalIconScale));
        
        _yAdd += _maxHeight;
        _xSubtract = max(_xSubtract, _textWidth);
        
        resTextScale[i] = lerp(resTextScale[i], 0, 0.1);
    }
