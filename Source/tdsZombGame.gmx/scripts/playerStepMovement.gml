///playerStepMovement();

var upGamepad = (gamepad_button_check(0, gp_padu) + abs(min((gamepad_axis_value(0, gp_axislv)), 0)));
var leftGamepad = (gamepad_button_check(0, gp_padl) + abs(min((gamepad_axis_value(0, gp_axislh)), 0)));
var downGamepad = (gamepad_button_check(0, gp_padd) + abs(max((gamepad_axis_value(0, gp_axislv)), 0)));
var rightGamepad = (gamepad_button_check(0, gp_padr) + abs(max((gamepad_axis_value(0, gp_axislh)), 0)));

var upKeyboard = keyboard_check(vk_up) + keyboard_check(ord("W"));
var leftKeyboard = keyboard_check(vk_left) + keyboard_check(ord("A"));
var downKeyboard = keyboard_check(vk_down) + keyboard_check(ord("S"));
var rightKeyboard = keyboard_check(vk_right) + keyboard_check(ord("D"));

//Receive Input
Up = clamp((upKeyboard + upGamepad), 0, 1);
Left = clamp((leftKeyboard + leftGamepad), 0, 1);
Down = clamp((downKeyboard  + downGamepad), 0, 1);
Right = clamp((rightKeyboard + rightGamepad), 0, 1);
Sprint = clamp((keyboard_check(vk_lshift)), 0, 1);

playerStepUpdateSpeeds();

movementTopDown(Acceleration, moveSpeed, Up, Left, Down, Right, Deceleration);
movementStepPhysics();
