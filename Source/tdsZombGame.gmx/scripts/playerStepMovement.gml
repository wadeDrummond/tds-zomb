///playerStepMovement();

//Receive Input
Up = (keyboard_check(ord("W")) or gamepad_button_check(0, gp_padu) or gamepad_axis_value(0, gp_axislv) < 0);
Left = (keyboard_check(ord("A")) or gamepad_button_check(0, gp_padl) or gamepad_axis_value(0, gp_axislh) < 0);
Down = (keyboard_check(ord("S")) or gamepad_button_check(0, gp_padd) or gamepad_axis_value(0, gp_axislv) > 0);
Right = (keyboard_check(ord("D")) or gamepad_button_check(0, gp_padr) or gamepad_axis_value(0, gp_axislh) > 0);
Sprint = (keyboard_check(vk_lshift));

playerStepUpdateSpeeds();

movementTopDown(Acceleration, moveSpeed, Up, Left, Down, Right, Deceleration);
movementStepPhysics();
