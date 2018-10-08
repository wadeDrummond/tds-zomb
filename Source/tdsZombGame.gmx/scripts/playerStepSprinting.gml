///playerStepSprinting();
/*
//if ((MoveH != 0) or (MoveV != 0))
    {
        if (Sprint)
            {
                if (statsMap[? Stats.Stamina] > 0)
                    {
                        sprintTimer = 0;
                        sprintMultiplier = 1.5;
                        statsMap[? Stats.Stamina] -= statDepleteRate[Stats.Stamina];
                    }
        
                else if (sprintTimer >= sprintTimerMin)
                    {
                        sprintMultiplier = 1;
                        statsMap[? Stats.Stamina] += (statDepleteRate[Stats.Stamina] * 0.75)
                    }
                    
                else
                    {
                        sprintMultiplier = 1;
                        sprintTimer += 1;
                    }
            }
            
        else if (sprintTimer >= sprintTimerMin)
            {
                sprintMultiplier = 1;
                statsMap[? Stats.Stamina] += (statDepleteRate[Stats.Stamina] * 0.75)
            }
            
        else
            {
                sprintMultiplier = 1;
                sprintTimer += 1;
            }
    }
    
//else if (sprintTimer >= sprintTimerMin)
    {
        sprintMultiplier = 1;
        statsMap[? Stats.Stamina] += (statDepleteRate[Stats.Stamina] * 0.75)
    }
    
else
    {
        sprintMultiplier = 1;
        sprintTimer += 1;
    }
