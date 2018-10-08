///playerStepPrimary();

if (instance_exists(objCommandline))
    {
        exit;
    }

playerStepUpdateMeleePositions();

switch(State)
    {
        case playerStates.Normal:
            {
                playerStepSprinting();
                playerStepMovement();
                playerStepShooting();
                playerStepAnimationNormal();
                playerStepInventoryPickups();
                playerStepUpdateAudio();
                break;
            }
            
        case playerStates.Attacking:
            {
                playerStepMovement();
                playerStepMeleeCollision();
                playerStepAnimationAttacking();
                playerStepInventoryPickupsAttacking();
                playerStepUpdateAudio();
            }
    }

playerStepUpdateStats();
