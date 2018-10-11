///playerStepMeleeCollisions();

if (imageIndex > weaponMeleeMinFrame[currentWeapon]) and (imageIndex < weaponMeleeMaxFrame[currentWeapon])
    {
        with (all)
            {
                var pID = other.id;
        
                if (pID != id)
                    {
                        if (distance_to_object(pID) <= (other.weaponRange[other.currentWeapon]))
                            {
                                if (ds_exists(other.meleeHitList, ds_type_list))
                                    {
                                        if (ds_list_find_index(other.meleeHitList, id) == -1)
                                            {
                                                if (collision_triangle(other.xMeleeTri[0], other.yMeleeTri[0], other.xMeleeTri[1], other.yMeleeTri[1], other.xMeleeTri[2], other.yMeleeTri[2], id))
                                                    {
                                                        
                                                        if (canBeDamaged(object_index))
                                                            {
                                                                Shake += 96;
                                                                var baseDamage = (other.weaponDamage[other.currentWeapon] * (other.healthDamageMultiplier));
                                                                hurtSelf(baseDamage * other.damageMultiplier, (other.statsMap[? Stats.critChance] / 100) * other.weaponCritChance[other.currentWeapon]);
                                                                
                                                                ds_list_add(other.meleeHitList, id);
                                                            }
                                                    }
                                            }
                                    }
                                else
                                    {
                                        clAddMessage("Error, DS List 'meleeHitList' doesn't exist. Not sure what to do.", c_red);
                                    }
                            }
                    }
            }
    }
