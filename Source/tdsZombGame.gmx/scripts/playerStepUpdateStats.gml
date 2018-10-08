///playerStepUpdateStats();

hungerMoveMultiplier = 1;
thirstMoveMultiplier = 1;
healthMoveMultiplier = 1;

statsMap[? Stats.Hunger] = clamp(statsMap[? Stats.Hunger] - (statDepleteRate[Stats.Hunger] * statDepleteFactor), 0, statsMap[? Stats.maxHunger]);
statsMap[? Stats.Thirst] = clamp(statsMap[? Stats.Thirst] - (statDepleteRate[Stats.Thirst] * statDepleteFactor), 0, statsMap[? Stats.maxThirst]);

var measureHunger = (statsMap[? Stats.Hunger] / statsMap[? Stats.maxHunger]) * 100;
var measureThirst = (statsMap[? Stats.Thirst] / statsMap[? Stats.maxThirst]) * 100;
var measureHealth = (statsMap[? Stats.Health] / statsMap[? Stats.maxHealth]);

/*
//Hunger-Based Movement Multipliers
if (measureHunger >= 75)
    {
        hungerMoveMultiplier = hungerMoveMultiplier * 1.05;
    }
else if (measureHunger >= 50)
    {
        hungerMoveMultiplier = hungerMoveMultiplier * 0.75;
    }
else if (measureHunger >= 25)
    {
        hungerMoveMultiplier = hungerMoveMultiplier * 0.5;
    }  
else
    {
        hungerMoveMultiplier = 0;
    }
    
//Thirst-Based Movement Multipliers
if (measureThirst >= 75)
    {
        thirstMoveMultiplier = thirstMoveMultiplier * 1.05;
    }
else if (measureThirst >= 50)
    {
        thirstMoveMultiplier = thirstMoveMultiplier * 0.75;
    }
else if (measureThirst >= 25)
    {
        thirstMoveMultiplier = thirstMoveMultiplier * 0.5;
    }  
else
    {
        hungerMoveMultiplier = 0;
    }
*/

//Update Movement/Attack Speed based on Health
healthMoveMultiplier = lerp(0.15, 1.0, measureHealth);
healthDamageMultiplier = lerp(0.45, 1.05, measureHealth);

//Health Depletion
if (statsMap[? Stats.Hunger] == 0) or (statsMap[? Stats.Thirst] == 0)
    {
        statsMap[? Stats.Health] -= (statDepleteRate[Stats.Health] * statDepleteFactor);
    }
    
healthScale = (statsMap[? Stats.Health] / statsMap[? Stats.maxHealth]);

//Clamping Stats
statsMap[? Stats.Health] = clamp(statsMap[? Stats.Health], 0, statsMap[? Stats.maxHealth]);
statsMap[? Stats.Hunger] = clamp(statsMap[? Stats.Hunger], 0, statsMap[? Stats.maxHunger]);
statsMap[? Stats.Thirst] = clamp(statsMap[? Stats.Thirst], 0, statsMap[? Stats.maxThirst]);
statsMap[? Stats.Stamina] = clamp(statsMap[? Stats.Stamina], 0, statsMap[? Stats.maxStamina]);
