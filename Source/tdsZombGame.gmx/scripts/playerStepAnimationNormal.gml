///playerStepAnimation();

playerStepUpdateSpeeds();

var animSpeedH = hsp[0];
var animSpeedV = vsp[0];

var Moving = (((x - xprevious) != 0) or (y - yprevious != 0));
if (abs((animSpeedH * moveSpeed)) > 0) and (abs((animSpeedV * moveSpeed)) > 0)
    {
        var walkAnimSpeed = (abs((animSpeedH * moveSpeed) * 0.5) + abs((animSpeedV * moveSpeed) * 0.5))
    }
else
    {
        var walkAnimSpeed = (abs((animSpeedH * moveSpeed)) + (abs((animSpeedV * moveSpeed))));
    }

animSpeed = clamp((walkAnimSpeed / moveSpeed) * animationFactor, 0, 1);
if (animSpeed == 0)
    {
        imageIndex = wrap(imageIndex + idleAnimationFactor, 0, sprite_get_number(spriteIndex));
        spriteIndex = idleSprite[currentWeapon]
    }
else
    {
        legIndex = wrap(legIndex + animSpeed * legAnimationFactor, 1, sprite_get_number(sprPlayerLegs) - 1);
        imageIndex = wrap(imageIndex + animSpeed, 0, sprite_get_number(spriteIndex));
        spriteIndex = walkSprite[currentWeapon]
    }

var checkPointDir = point_direction(x, y, mouse_x, mouse_y);

playerAngle = checkPointDir;

if ((animSpeedH * moveSpeed) != 0) or ((animSpeedV * moveSpeed) != 0)
    {
        legAngle = point_direction(0, 0, (animSpeedH * moveSpeed), (animSpeedV * moveSpeed));
    }
