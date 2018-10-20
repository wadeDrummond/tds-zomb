///playerDrawHUD();

display_set_gui_size(1280, 720);

var Width = 1280;
var Height = 720;
var guiBorder = 6;
var yPos = Height - guiBorder;
var xPos = guiBorder;
var _overallScale = hudScale;
var barWidth = (384 * 0.5) * _overallScale;
var barHeight = (48 * 0.5) * _overallScale;
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
        
        var textShadowLength = 3 * _overallScale;
        var statString = statTitle[i] + " - " + string((ceil(currentStat[i])));
        
        draw_set_alpha(1);
        draw_set_colour(c_black);
        draw_text_transformed(xBarCenter + textShadowLength, yBarCenter - barHeight + textShadowLength, statString, _overallScale, _overallScale, 0);

        draw_set_alpha(1);
        draw_set_colour(c_white);
        draw_text_transformed(xBarCenter, yBarCenter - barHeight, statString, _overallScale, _overallScale, 0);
        
        yPos -= (barHeight + guiBorder)
    }

if (itemInteractLerp > 0.15)
    {
        //Setup Local Variables for the Title

        draw_set_font(fontPickupTitle);
        var yItemOffset = 14;
        var titleBorder = 24;
        var yTweenAmount = 2;
        var titleTextShadow = 0.5;
        var titleFontScale = itemInteractLerp + sin_move(-0.01, 0.01, 6, 0);
        var itemInteractTitleWidth = (string_width(itemInteractTitle) + titleBorder) * titleFontScale;
        var itemInteractTitleHeight = (string_height(itemInteractTitle) + titleBorder) * titleFontScale;
        var xItemTitle = xPlayer;
        var yItemTitle = lerp(yPlayer, yPlayer + itemInteractTitleHeight + yItemOffset + 4, itemInteractLerp) + sin_move(-yTweenAmount, yTweenAmount, 3, 0);
        var xT1 = xItemTitle - ((itemInteractTitleWidth + titleBorder) / 2);
        var yT1 = yItemTitle;
        var xT2 = xItemTitle + ((itemInteractTitleWidth + titleBorder) / 2);
        var yT2 = yItemTitle + ((itemInteractTitleHeight + titleBorder) / 2);
        var titleMix = sin_move(0, 1, 4.5, 0);
        var titleColour1 = merge_colour(c_ltgray, c_white, titleMix);
        var titleColour2 = merge_colour(titleColour1, c_black, 0.65);
        var titleOutlineWidth = lerp(0, 2, itemInteractLerp);
        var xItemTitleText = xPlayer;
        var yItemTitleText = mean(yT1, yT2);
        var titleAngle = sin_move(-0.5, 0.5, 6, 0);
        
        //Setup Local Variables for the Circle Button Prompt
        var xItemInteractCircle = xPlayer;
        var yItemInteractCircle = lerp(yPlayer, yPlayer - (sprite_get_width(walkSprite[currentWeapon])), itemInteractLerp);
        var itemInteractCircleRadius = lerp(12, 36, itemInteractLerp);
        var itemInteractOutlineWidth = lerp(1, 4, itemInteractLerp);
        var itemInteractLOD = lerp(3, 32, itemInteractLerp);
        var itemInteractAlpha = itemInteractLerp * 0.5;
        var itemInteractTextScale = lerp(0.15, 0.65, itemInteractLerp);
        var itemInteractAngle = sin_move(-2, 2, 4, 0);
        
        //Draw Title
        draw_set_alpha(itemInteractAlpha * 1.25);
        draw_set_colour(c_dkgray);
        draw_rectangle(xT1, yT1, xT2, yT2, false);
        draw_set_colour(c_black);
        draw_rectangle_width(xT1, yT1, xT2, yT2, titleOutlineWidth);
        draw_set_colour(titleColour2);
        draw_text_transformed(xItemTitleText + (titleTextShadow), yItemTitleText + (titleTextShadow), itemInteractTitle, titleFontScale, titleFontScale, titleAngle);
        draw_set_colour(titleColour1);
        draw_set_alpha(1);
        draw_text_transformed(xItemTitleText - (titleTextShadow), yItemTitleText - (titleTextShadow), itemInteractTitle, titleFontScale, titleFontScale, titleAngle);
        
        //Draw Circle Button Prompt
        draw_set_alpha(itemInteractAlpha);
        draw_set_colour(c_black);
        draw_circle(xItemInteractCircle, yItemInteractCircle, itemInteractCircleRadius, false);
        draw_set_colour(c_dkgray);
        draw_circle_width(xItemInteractCircle, yItemInteractCircle, itemInteractCircleRadius, itemInteractOutlineWidth, itemInteractLOD);
        draw_set_font(fontPickup);
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_set_colour(c_ltgray);
        draw_text_transformed(xItemInteractCircle + 2, yItemInteractCircle + 2, "F", itemInteractTextScale, itemInteractTextScale, itemInteractAngle);
        draw_set_colour(c_white);
        draw_text_transformed(xItemInteractCircle, yItemInteractCircle, "F", itemInteractTextScale, itemInteractTextScale, itemInteractAngle);
    }
