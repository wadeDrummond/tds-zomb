///playerDrawPrimary();

draw_sprite_ext(sprPlayerLegs, legIndex, x + shadowLength, y + shadowLength, xScale * legScale, yScale * legScale, legAngle, c_black, 0.65);
draw_sprite_ext(sprPlayerLegs, legIndex, x, y, xScale * legScale, yScale * legScale, legAngle, imageBlend, imageAlpha);
draw_sprite_ext(spriteIndex, imageIndex, x + shadowLength, y + shadowLength, xScale, yScale, playerAngle, c_black, 0.65);
draw_sprite_ext(spriteIndex, imageIndex, x, y, xScale, yScale, playerAngle, imageBlend, imageAlpha);

if ((keyboard_check(vk_control)) and debugMode)
    {
        draw_set_alpha(0.5);
        with(all)
            {
                draw_set_colour(c_yellow);
                draw_rectangle_width(bbox_left, bbox_top, bbox_right, bbox_bottom, 4);
            }

        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_set_font(fontDebug);
        draw_set_alpha(1);
        draw_set_colour(c_blue);
        draw_text(x, y + sprite_get_height(spriteIndex) * 1.5, "(" + string(x) + ", " + string(y) + ")# MoveH - " + string(MoveH) + "#MoveV - " + string(MoveV));
        draw_set_alpha(0.35);
        draw_set_colour(c_red);
        draw_triangle_width(xMeleeTri[0], yMeleeTri[0], xMeleeTri[1], yMeleeTri[1], xMeleeTri[2], yMeleeTri[2], 4)
        draw_set_colour(c_green);
        draw_circle(x, y, pickupRadius, false);
        draw_set_alpha(1);
    }
