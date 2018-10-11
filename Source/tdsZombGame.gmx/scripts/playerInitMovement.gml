///Declare Movement Variables

movementInput = false;
baseAcceleration = 0.65;
baseDeceleration = 0.4;
baseMoveSpeed = 4.5;
randomInputs = false;
randomToggled = false;
lookFar = false;
camMultiplier = 1;

alarm[1] = room_speed * 2;

movementInit(0, baseDeceleration, 0, 0, baseMoveSpeed, baseAcceleration, parSolid);

diagonalAmount = lengthdir_x(1, point_direction(0, 0, 1, 1));
gamepad_set_axis_deadzone(0, 0.4);
