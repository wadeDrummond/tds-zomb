///playerInitWeaponsParseStats();

var _Length = array_length_1d(wepStats);
for (var i = 0; i < _Length; i ++)
    {
        var tempType;
        var tempList = string_parse(wepStats[i], "|", true);
        
        idleSprite[i] = asset_get_index(tempList[| 0]);
        walkSprite[i] = asset_get_index(tempList[| 1]);
        attackSprite[i] = asset_get_index(tempList[| 2]);
        tempType = tempList[| 3];
        weaponSpeed[i] = real(tempList[| 4]);
        weaponDamage[i] = real(tempList[| 5]);
        weaponRange[i] = real(tempList[| 6]);
        weaponWalkSpeed[i] = real(tempList[| 7]);
        weaponCritChance[i] = real(tempList[| 8]);
        weaponStaminaAmt[i] = real(tempList[| 9]);
        weaponMeleeMinFrame[i] = real(tempList[| 10]);
        weaponMeleeMaxFrame[i] = real(tempList[| 11]);
        
        if (tempType == "Melee")
            {
                weaponType[i] = wepType.Melee;
            }
        else if (tempType == "Gun")
            {
                weaponType[i] = wepType.Gun;
            }
    }
