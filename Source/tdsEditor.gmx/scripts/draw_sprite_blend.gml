///draw_sprite_blend(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

var fracAmount = frac(argument1);
var maxAlpha = argument8;
var invFracAmount = (1 - fracAmount);
var firstAlpha = invFracAmount;
var secondAlpha = fracAmount;

draw_sprite_ext(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, firstAlpha);
draw_sprite_ext(argument0, argument1 + 1, argument2, argument3, argument4, argument5, argument6, argument7, secondAlpha);

//clAddMessage(string(firstAlpha) + " " + string(secondAlpha));
