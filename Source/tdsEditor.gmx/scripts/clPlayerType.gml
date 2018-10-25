///clPlayerType();

keyboard_string = (string_copy(keyboard_string, 1, maxLength));
currentText = keyboard_string;

if (keyboard_check_pressed(vk_enter))
    {
        if (currentText != "")
            {
                ds_list_add(lineList, currentText);
                ds_list_add(colourList, c_white);
                hitEnter = true;
            }
    }
