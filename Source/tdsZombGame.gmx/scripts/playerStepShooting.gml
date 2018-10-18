///playerStepShooting();

if (Shoot)
    {
        attackIndex = 0;
        imageIndex = 0;
        
        if (weaponType[currentWeapon] == wepType.Gun)
            {
                gunshotPlay(currentWeapon);
                State = playerStates.Attacking;
                meleeHitList = ds_list_create();
            }

        else if (weaponType[currentWeapon] == wepType.Melee)
            {
                if (statsMap[? Stats.Stamina] > weaponStaminaAmt[currentWeapon])
                    {
                        soundPlayRandomPitch(choose(sndSwish1, sndSwish2, sndSwish3));
                        meleeHitList = ds_list_create();
                        State = playerStates.Attacking;
                        Shake += 8;
                        
                        if (wepStatsAltCount[currentWeapon] > 0)
                            chosenAttackSprite = choose(attackSprite[currentWeapon], wepStatsAltAnimations[currentWeapon, irandom(wepStatsAltCount[currentWeapon] - 1)]);
                        else
                            chosenAttackSprite = attackSprite[currentWeapon];
                    }
            }
    }
    
if (altShoot)
    if explosionMode
        instance_create(mouse_x, mouse_y, objExplosion);
