///playerStepAnimationAttacking();

playerStepUpdateSpeeds();

var animSpeedH = hsp[0] + hsp[1];
var animSpeedV = vsp[0] + vsp[1];

spriteIndex = chosenAttackSprite;

if (abs((animSpeedH * moveSpeed)) > 0) and (abs((animSpeedV * moveSpeed)) > 0)
    {
        var walkAnimSpeed = (abs((animSpeedH * moveSpeed) * 0.5) + abs((animSpeedV * moveSpeed) * 0.5))
    }
else
    {
        var walkAnimSpeed = (abs((animSpeedH * moveSpeed)) + (abs((animSpeedV * moveSpeed))));
    }

animSpeed = clamp((walkAnimSpeed / moveSpeed) * animationFactor, 0, 1);
legAnimSpeed = animSpeed * legAnimationFactor;
if (legAnimSpeed != 0)
    {
        legIndex = wrap(legIndex + (legAnimSpeed), 1, sprite_get_number(sprPlayerLegs) - 1);
    }
else
    {
        legIndex = 0;
    }

attackIndex += (healthDamageMultiplier);
var attackLerpAmount = (attackIndex / (weaponSpeed[currentWeapon] * 60));
imageIndex = lerp(0, sprite_get_number(spriteIndex), attackLerpAmount);

if (imageIndex >= (sprite_get_number(spriteIndex)))
    {
        State = playerStates.Normal;
        if (ds_exists(meleeHitList, ds_type_list))
            {
                ds_list_destroy(meleeHitList);
            }
    }

var checkPointDir = point_direction(x, y, mouse_x, mouse_y);

playerAngle = checkPointDir;

if (x != xprevious) or (y != yprevious)
    {
        legAngle = point_direction(0, 0, (animSpeedH * moveSpeed), (animSpeedV * moveSpeed));
    }
