///playerInitWeapons();
    
enum Weapons
    {
        Unarmed, Knife, Pistol
    }
    
enum wepType
    {
        Melee, Gun
    }

/* 
[Template]
//(Weapon Name) Stats
idleSprite[Weapons.Weapon] = sprPlayer(Weapon)Idle - Sprite stuff.
walkSprite[Weapons.Weapon] = sprPlayer(Weapon)Walk - Sprite stuff.
attackSprite[Weapons.Weapon] = sprPlayer(Weapon)Attack - Sprite stuff.
weaponType[Weapons.Weapon] = (wepType.Melee, wepType.Gun) - How the weapon is used.
weaponSpeed[Weapons.Weapon] = (real) - How fast the weapon attacks; measured in seconds.
weaponDamage[Weapons.Weapon] = (real) - Base amount of damage. Base hits do 0.85 to 1.25 the damage, Crits do 2.5 to 4 times.
weaponRange[Weapons.Weapon] = (real) - Weapon range. Measured in pixels. 96 is a good base.
weaponWalkSpeed[Weapons.Weapon] = (real) - Walk Speed Multiplier.
weaponCritChance[Weapons.Weapon] = (real) - Crit chance. A number will be rolled from zero to this value. If it equals zero, it will be a crit.
weaponStaminaAmt[Weapons.Weapon] = (real) - How much Stamina using this weapon costs.
weaponMeleeMinFrame[Weapons.Weapon] = (real) - Sprite stuff.
weaponMeleeMaxFrame[Weapons.Weapon] = (real) - Sprite stuff.
*/
wepStats[Weapons.Unarmed] = "sprPlayerUnarmedIdle|sprPlayerUnarmedWalk|sprPlayerUnarmedAttack1|Melee|0.5|4|96|1.15|65|4|22|32";
wepStats[Weapons.Knife] = "sprPlayerKnifeIdle|sprPlayerKnifeWalk|sprPlayerKnifeAttack|Melee|0.35|8|128|1|45|6|6|10";
wepStats[Weapons.Pistol] = "sprPlayerPistolIdle|sprPlayerPistolWalk|sprPlayerPistolAttack|Gun|0.2|4|0|0.915|65|4|0|0";

wepStatsAltCount[Weapons.Unarmed] = 2;
wepStatsAltCount[Weapons.Knife] = 0;
wepStatsAltCount[Weapons.Pistol] = 0;

wepStatsAltAnimations[Weapons.Unarmed, 0] = sprPlayerUnarmedAttack2;
wepStatsAltAnimations[Weapons.Unarmed, 1] = sprPlayerUnarmedAttack3;

chosenAttackSprite = sprPlayerUnarmedAttack1;

healthDamageMultiplier = 1;

playerInitWeaponsParseStats();

/*
//Unarmed Stats
idleSprite[Weapons.Unarmed] = sprPlayerUnarmedIdle;
walkSprite[Weapons.Unarmed] = sprPlayerUnarmedWalk;
attackSprite[Weapons.Unarmed] = sprPlayerUnarmedAttack;
weaponType[Weapons.Unarmed] = wepType.Melee;
weaponSpeed[Weapons.Unarmed] = 0.5;
weaponDamage[Weapons.Unarmed] = 4;
weaponRange[Weapons.Unarmed] = 96;
weaponWalkSpeed[Weapons.Unarmed] = 1.15;
weaponCritChance[Weapons.Unarmed] = 65;
weaponStaminaAmt[Weapons.Unarmed] = 4;
weaponMeleeMinFrame[Weapons.Unarmed] = 7;
weaponMeleeMaxFrame[Weapons.Unarmed] = 14;
    
//Knife Stats
idleSprite[Weapons.Knife] = sprPlayerKnifeIdle;
walkSprite[Weapons.Knife] = sprPlayerKnifeWalk;
attackSprite[Weapons.Knife] = sprPlayerKnifeAttack;
weaponType[Weapons.Knife] = wepType.Melee;
weaponSpeed[Weapons.Knife] = 0.35;
weaponDamage[Weapons.Knife] = 8;
weaponRange[Weapons.Knife] = 128;
weaponWalkSpeed[Weapons.Knife] = 1;
weaponCritChance[Weapons.Knife] = 45;
weaponStaminaAmt[Weapons.Knife] = 6;
weaponMeleeMinFrame[Weapons.Knife] = 6;
weaponMeleeMaxFrame[Weapons.Knife] = 10;

//Pistol Stats
idleSprite[Weapons.Pistol] = sprPlayerPistolIdle;
walkSprite[Weapons.Pistol] = sprPlayerPistolWalk;
attackSprite[Weapons.Pistol] = sprPlayerPistolAttack;
weaponType[Weapons.Pistol] = wepType.Gun;
weaponSpeed[Weapons.Pistol] = 0.2;
weaponDamage[Weapons.Pistol] = 4;
weaponRange[Weapons.Pistol] = 0;
weaponWalkSpeed[Weapons.Pistol] = 0.915;
weaponCritChance[Weapons.Pistol] = 65;
weaponStaminaAmt[Weapons.Pistol] = 4;
weaponMeleeMinFrame[Weapons.Pistol] = 7;
weaponMeleeMaxFrame[Weapons.Pistol] = 14;
*/

currentWeapon = Weapons.Unarmed;
damageMultiplier = 1;

xMeleeTri[0] = x;
yMeleeTri[0] = y;
xMeleeTri[1] = x;
yMeleeTri[1] = y;
xMeleeTri[2] = x;
yMeleeTri[2] = y;
