///clSetStat(stat, value);

var tempStat = -1;

if (argument0 == "maxHealth") tempStat = Stats.maxHealth;
if (argument0 == "Health") tempStat = Stats.Health;
if (argument0 == "maxHunger") tempStat = Stats.maxHunger;
if (argument0 == "Hunger") tempStat = Stats.Hunger;
if (argument0 == "maxThirst") tempStat = Stats.maxThirst;
if (argument0 == "Thirst") tempStat = Stats.Thirst;
if (argument0 == "maxStamina") tempStat = Stats.maxStamina;
if (argument0 == "Stamina") tempStat = Stats.Stamina;
if (argument0 == "critChance") tempStat = Stats.critChance;

if (tempStat != -1)
    {
        objPlayer.statsMap[? tempStat] = real(argument1);
        clAddMessage("Attempted to set " + argument0 + " to " + string(argument1), c_green);
    }
else
    {
        clAddMessage("Error, failed to find stat with index of " + string(argument0) + ".", c_red);
    }
