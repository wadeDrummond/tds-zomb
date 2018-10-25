///playerStepInputs();

upGamepad = (gamepad_button_check(0, gp_padu) + abs(min((gamepad_axis_value(0, gp_axislv)), 0)));
leftGamepad = (gamepad_button_check(0, gp_padl) + abs(min((gamepad_axis_value(0, gp_axislh)), 0)));
downGamepad = (gamepad_button_check(0, gp_padd) + abs(max((gamepad_axis_value(0, gp_axislv)), 0)));
rightGamepad = (gamepad_button_check(0, gp_padr) + abs(max((gamepad_axis_value(0, gp_axislh)), 0)));

upKeyboard = keyboard_check(vk_up) + keyboard_check(ord("W"));
leftKeyboard = keyboard_check(vk_left) + keyboard_check(ord("A"));
downKeyboard = keyboard_check(vk_down) + keyboard_check(ord("S"));
rightKeyboard = keyboard_check(vk_right) + keyboard_check(ord("D"));

Interact = keyboard_check_pressed(ord("F"));
lookFar = keyboard_check(vk_shift);

Shoot = (mouse_check_button(mb_left) or gamepad_button_check(0, gp_shoulderrb));
altShoot = (mouse_check_button_pressed(mb_right) or gamepad_button_check(0, gp_shoulderlb));

var _xWindowMouse = window_mouse_get_x();
var _yWindowMouse = window_mouse_get_y();
var _xDifference = abs(_xWindowMouse - xWindowMousePrevious);
var _yDifference = abs(_yWindowMouse - yWindowMousePrevious);
var _mouseDifference = (_xDifference + _yDifference);

var rightHorizontal = gamepad_axis_value(0, gp_axisrh);
var rightVertical = gamepad_axis_value(0, gp_axisrv)
var _gamepadAdded = (abs(rightHorizontal) + abs(rightVertical));

if (_gamepadAdded > thresholdGamepad)
    gamepadInputs = true;
if (_mouseDifference >= thresholdMouse)
    gamepadInputs = false;
    
if (gamepadInputs)
    {
        if ((rightHorizontal != 0) or (rightVertical != 0))
            playerAngle = point_direction(0, 0, rightHorizontal, rightVertical);
    }
else
    playerAngle = point_direction(x, y, mouse_x, mouse_y);
