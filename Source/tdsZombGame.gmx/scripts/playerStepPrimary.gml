///playerStepPrimary();

hudScale = sin_move(0.5, 2, 2, 0);

if (instance_exists(objCommandline))
    exit;

playerStepUpdateMeleePositions();

switch(State)
    {
        case playerStates.Normal:
            {
                playerStepInputs();
                playerStepSprinting();
                playerStepMovement();
                playerStepShooting();
                playerStepAnimationNormal();
                playerStepInteracting();
                playerStepUpdateAudio();
                playerStepFootsteps();
                break;
            }
            
        case playerStates.Attacking:
            {
                playerStepInputs();
                playerStepMovement();
                playerStepMeleeCollision();
                playerStepAnimationAttacking();
                playerStepInventoryPickupsAttacking();
                playerStepUpdateAudio();
            }
    }

playerStepUpdateStats();
