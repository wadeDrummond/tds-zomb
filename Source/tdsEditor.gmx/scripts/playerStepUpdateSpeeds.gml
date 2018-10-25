///playerStepUpdateSpeeds();

//var totalSpeedChange = (mean(hungerMoveMultiplier, thirstMoveMultiplier) * (weaponWalkSpeed[currentWeapon] * sprintMultiplier))
//var accelSpeedChange = clamp(min(hungerMoveMultiplier, thirstMoveMultiplier), 0.1, 1);

totalSpeedChange = (healthMoveMultiplier * (weaponWalkSpeed[currentWeapon] * sprintMultiplier))
accelSpeedChange = healthMoveMultiplier;

if (State == playerStates.Attacking)
    {
        totalSpeedChange = (totalSpeedChange * 0.65);
    }

moveSpeed = baseMoveSpeed * totalSpeedChange;
Acceleration = baseAcceleration * accelSpeedChange;
Deceleration = baseDeceleration * accelSpeedChange;

if (accelSpeedChange <= (0.25)) and (movementInput)
    {
        randomInputs = true;
    }
else
    {
        randomInputs = false;
    }
