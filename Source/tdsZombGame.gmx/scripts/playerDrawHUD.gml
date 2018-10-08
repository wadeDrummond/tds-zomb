///playerDrawHUD();

display_set_gui_size(1280, 720);

var Width = 1280;
var Height = 720;
var guiBorder = 6;
var yPos = Height - guiBorder;
var xPos = guiBorder;
var barWidth = 384 * 0.5;
var barHeight = 48 * 0.5;
var xPlayer = (x - view_xview);
var yPlayer = (y - view_yview);
var colMix = sin_move(0, 0.5, 5, 0);

maxStat[3] = statsMap[? Stats.maxHealth];
maxStat[2] = statsMap[? Stats.maxStamina];
maxStat[1] = statsMap[? Stats.maxHunger];
maxStat[0] = statsMap[? Stats.maxThirst];
currentStat[3] = statsMap[? Stats.Health];
currentStat[2] = statsMap[? Stats.Stamina];
currentStat[1] = statsMap[? Stats.Hunger];
currentStat[0] = statsMap[? Stats.Thirst];

draw_set_font(fontStats);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

for (var i = 0; i < statAmount; i ++)
    {
        var drawValue = ((currentStat[i] / maxStat[i]) * 100);

        drawColour[i] = statColour[i];
        drawColourMin[i] = merge_colour(drawColour[i], c_black, 0.25);
        drawColourMax[i] = merge_colour(drawColour[i], c_white, 0.25);
        
        var xBarCenter = xPos + (barWidth / 2);
        var yBarCenter = yPos + (barHeight / 2);

        draw_set_alpha(1);
        
        draw_healthbar(xPos, yPos - barHeight, xPos + barWidth, yPos, drawValue, c_dkgray, drawColourMin[i], drawColourMax[i], 0, true, true);
        
        var textShadowLength = 3;
        var statString = statTitle[i] + " - " + string((round(currentStat[i])));
        
        draw_set_alpha(1);
        draw_set_colour(c_black);
        draw_text(xBarCenter + textShadowLength, yBarCenter - barHeight + textShadowLength, statString);

        draw_set_alpha(1);
        draw_set_colour(c_white);
        draw_text(xBarCenter, yBarCenter - barHeight, statString);
        
        yPos -= (barHeight + guiBorder)
    }

if (itemPickupLerp > 0)
    {
        //Setup Local Variables for the Title

        draw_set_font(fontPickupTitle);
        var yItemOffset = 14;
        var titleBorder = 24;
        var yTweenAmount = 2;
        var titleFontScale = itemPickupLerp + sin_move(-0.01, 0.01, 6, 0);
        var itemPickupTitleWidth = (string_width(itemPickupTitle) + titleBorder) * titleFontScale;
        var itemPickupTitleHeight = (string_height(itemPickupTitle) + titleBorder) * titleFontScale;
        var xItemTitle = xPlayer;
        var yItemTitle = lerp(yPlayer, yPlayer + itemPickupTitleHeight + yItemOffset + 4, itemPickupLerp) + sin_move(-yTweenAmount, yTweenAmount, 3, 0);
        var xT1 = xItemTitle - ((itemPickupTitleWidth + titleBorder) / 2);
        var yT1 = yItemTitle;
        var xT2 = xItemTitle + ((itemPickupTitleWidth + titleBorder) / 2);
        var yT2 = yItemTitle + ((itemPickupTitleHeight + titleBorder) / 2);
        var titleMix = sin_move(0, 1, 4.5, 0);
        var titleColour1 = merge_colour(c_blue, c_purple, titleMix);
        var titleColour2 = merge_colour(titleColour1, c_black, 0.65);
        var titleOutlineWidth = lerp(0, 2, itemPickupLerp);
        var xItemTitleText = xPlayer;
        var yItemTitleText = mean(yT1, yT2);
        var titleAngle = sin_move(-0.5, 0.5, 6, 0);
        
        //Setup Local Variables for the Circle Button Prompt
        var xItemPickupCircle = xPlayer;
        var yItemPickupCircle = lerp(yPlayer, yPlayer - (sprite_get_width(walkSprite[currentWeapon])), itemPickupLerp);
        var itemPickupCircleRadius = lerp(12, 36, itemPickupLerp);
        var itemPickupOutlineWidth = lerp(1, 4, itemPickupLerp);
        var itemPickupLOD = lerp(3, 32, itemPickupLerp);
        var itemPickupAlpha = itemPickupLerp * 0.5;
        var itemPickupTextScale = lerp(0.15, 0.65, itemPickupLerp);
        var itemPickupAngle = sin_move(-2, 2, 4, 0);
        
        //Draw Title
        draw_set_alpha(itemPickupAlpha * 1.25);
        draw_set_colour(c_dkgray);
        draw_rectangle(xT1, yT1, xT2, yT2, false);
        draw_set_colour(c_black);
        draw_rectangle_width(xT1, yT1, xT2, yT2, titleOutlineWidth);
        draw_set_colour(titleColour2);
        draw_text_transformed(xItemTitleText + 2, yItemTitleText + 2, itemPickupTitle, titleFontScale, titleFontScale, titleAngle);
        draw_set_colour(titleColour1);
        draw_set_alpha(1);
        draw_text_transformed(xItemTitleText - 2, yItemTitleText - 2, itemPickupTitle, titleFontScale, titleFontScale, titleAngle);
        
        //Draw Circle Button Prompt
        draw_set_alpha(itemPickupAlpha);
        draw_set_colour(c_black);
        draw_circle(xItemPickupCircle, yItemPickupCircle, itemPickupCircleRadius, false);
        draw_set_colour(c_dkgray);
        draw_circle_width(xItemPickupCircle, yItemPickupCircle, itemPickupCircleRadius, itemPickupOutlineWidth, itemPickupLOD);
        draw_set_font(fontPickup);
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_set_colour(c_ltgray);
        draw_text_transformed(xItemPickupCircle + 2, yItemPickupCircle + 2, "F", itemPickupTextScale, itemPickupTextScale, itemPickupAngle);
        draw_set_colour(c_white);
        draw_text_transformed(xItemPickupCircle, yItemPickupCircle, "F", itemPickupTextScale, itemPickupTextScale, itemPickupAngle);
    }
