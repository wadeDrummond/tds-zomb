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
altShoot = (mouse_check_button(mb_right) or gamepad_button_check(0, gp_shoulderlb));
