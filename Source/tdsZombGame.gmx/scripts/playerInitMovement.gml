///Declare Movement Variables

movementInput = false;
baseAcceleration = 0.70;
baseDeceleration = 0.45;
baseMoveSpeed = 5.5;
randomInputs = false;
randomToggled = false;
lookFar = false;
gamepadInputs = false;
thresholdMouse = 24;
thresholdGamepad = 0.5;
xWindowMousePrevious = window_mouse_get_x();
yWindowMousePrevious = window_mouse_get_y();

alarm[1] = room_speed * 2;

movementInit(0, baseDeceleration, 0, 0, baseMoveSpeed, baseAcceleration, parSolid);

diagonalAmount = lengthdir_x(1, point_direction(0, 0, 1, 1));
gamepad_set_axis_deadzone(0, 0.35);
