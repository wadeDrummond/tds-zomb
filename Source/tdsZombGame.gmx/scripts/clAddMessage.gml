///addMessage();

argument[0] = string(argument[0]);

ds_list_add(lineList, string(argument[0]));

if (argument_count > 1)
    ds_list_add(colourList, argument[1]);
else
    ds_list_add(colourList, c_white);
    
if (string(argument[0]) != " ") show_debug_message("Commandline: " + string(argument[0]));
