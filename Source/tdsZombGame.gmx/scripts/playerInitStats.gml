///playerInitStats();
enum Stats
    {
        maxHealth, Health, maxHunger, Hunger, maxThirst, Thirst, maxStamina, Stamina, critChance
    }

statsMap = ds_map_create();

statsMap[? Stats.maxHealth] = 100;
statsMap[? Stats.Health] = 100;
statsMap[? Stats.maxHunger] = 100;
statsMap[? Stats.Hunger] = 100;
statsMap[? Stats.maxThirst] = 100;
statsMap[? Stats.Thirst] = 100;
statsMap[? Stats.maxStamina] = 100;
statsMap[? Stats.Stamina] = 100;
statsMap[? Stats.critChance] = 100;

statColour[3] = c_red;
statColour[2] = c_orange;
statColour[1] = c_green;
statColour[0] = c_blue;

drawColour[3] = c_red;
drawColour[2] = c_orange;
drawColour[1] = c_green;
drawColour[0] = c_blue;

maxStat[3] = statsMap[? Stats.maxHealth];
maxStat[2] = statsMap[? Stats.maxStamina];
maxStat[1] = statsMap[? Stats.maxHunger];
maxStat[0] = statsMap[? Stats.maxThirst];

currentStat[3] = statsMap[? Stats.Health];
currentStat[2] = statsMap[? Stats.Stamina];
currentStat[1] = statsMap[? Stats.Hunger];
currentStat[0] = statsMap[? Stats.Thirst];

statDepleteRate[Stats.Health] = 0.065;
statDepleteRate[Stats.Hunger] = 0.0095625;
statDepleteRate[Stats.Thirst] = 0.01275;
statDepleteRate[Stats.Stamina] = 1;
statDepleteFactor = 0.5;

statTitle[3] = "HEALTH";
statTitle[2] = "STAMINA";
statTitle[1] = "HUNGER";
statTitle[0] = "THIRST";

statAmount = 4;

hungerMoveMultiplier = 1;
thirstMoveMultiplier = 1;
healthMoveMultiplier = 1;

sprintTimer = 0;
sprintTimerMin = 30;
sprintMultiplier = 1;
