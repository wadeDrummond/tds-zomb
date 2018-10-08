///playerStepShooting();

Shoot = (mouse_check_button(mb_left) or gamepad_button_check(0, gp_shoulderrb));
altShoot = (mouse_check_button(mb_right) or gamepad_button_check(0, gp_shoulderlb));

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
                        Shake += 96;
                    }
            }
    }
    
if (altShoot)
    {
        //Nothing
    }
