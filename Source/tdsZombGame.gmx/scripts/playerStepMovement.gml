///playerStepMovement();

Up = clamp((upKeyboard + upGamepad), 0, 1);
Left = clamp((leftKeyboard + leftGamepad), 0, 1);
Down = clamp((downKeyboard  + downGamepad), 0, 1);
Right = clamp((rightKeyboard + rightGamepad), 0, 1);
Sprint = clamp((keyboard_check(vk_lshift)), 0, 1);

playerStepUpdateSpeeds();

movementTopDown(Acceleration, moveSpeed, Up, Left, Down, Right, Deceleration);
movementStepPhysics();
