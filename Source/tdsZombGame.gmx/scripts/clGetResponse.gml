///getResponse(Text);

var grList = clParseInput(argument0);
var grSize = ds_list_size(grList);
var grCommand = grList[| 0];

var Argument, argumentCount;

Argument[0] = "";
Argument[1] = "";
Argument[2] = "";
Argument[3] = "";
Argument[4] = "";
Argument[5] = "";
Argument[6] = "";
Argument[7] = "";
Argument[8] = "";
Argument[9] = "";

if (grSize > 1)
    {
        for(var i = 0; i < grSize; i ++)
            {
                Argument[i] = grList[| i];
                argumentCount = array_length_1d(Argument);
            }
    }
else
    {
        Argument[0] = -1;
        argumentCount = 1;
    }
    
ds_list_destroy(grList);

var commandAmount = array_length_1d(Command);
for(var i = 0; i < commandAmount; i ++)
    {
        if (grCommand == Command[i])
            {
                if (grSize - 1) < commandArgumentMin[i]
                    {
                        clAddMessage("Error, expected at least " + string(commandArgumentMin[i]) + " arguments, got " + string(grSize - 1) + ".", c_red);
                        exit;
                    }

                switch(Command[i])
                    {
                        case "set":
                            {
                                clSetVariable(Argument[1], Argument[2], Argument[3]);                
                                break;
                            }
                        case "help":
                            {
                                clHelp();
                                break;
                            }
                        case "cicada":
                            {
                                global.playCicada = true;
                                break;
                            }
                        case "teleport":
                            {
                                objPlayer.x = Argument[1];
                                objPlayer.y = Argument[2];
                                
                                clAddMessage("Teleported Player to (" + string(Argument[1]) + ", " + string(Argument[2]) + ").", c_green);
                                break;
                            }
                        case "restart":
                            {
                                game_restart();
                                break;
                            }
                        case "quit":
                            {
                                if (onWeb)
                                    {
                                        clAddMessage("Cannot close game on HTML5 export.");
                                        break;
                                    }
                                else
                                    {
                                        game_end();
                                        break;
                                    }
                            }
                        case "create":
                            {
                                clCreateInstance(Argument[1], Argument[2], Argument[3], Argument[4]);
                                break;
                            }
                        case "clear":
                            {
                                clInit();
                                break;
                            }
                        case "debug_overlay":
                            {
                                if (Argument[1] == "true")
                                    {
                                        show_debug_overlay(true);
                                        audio_debug(true);
                                        clAddMessage("Toggled on debug overlays.", c_green);
                                    }
                                else if (Argument[1] == "false")
                                    {
                                        show_debug_overlay(false);
                                        audio_debug(false);
                                        clAddMessage("Toggled off debug overlays.", c_green);
                                    }
                                else
                                    {
                                        clAddMessage("Unexpected argument. Accepts a boolean, 'true' or 'false'.");
                                    }
                                break;
                            }
                            
                        case "set_time":
                            {
                                clSetTime(Argument[1], Argument[2]);
                                break;
                            }
                        case "set_stat":
                            {
                                clSetStat(Argument[1], Argument[2]);
                                break;
                            }
                        case "set_global":
                            {
                                clSetGlobalVariable(Argument[1], Argument[2]);
                                break;
                            }
                        case "shake":
                            {
                                Shake += real(Argument[1]);
                                break;
                            }
                    }

                break;
            }
            
        else if (i >= (commandAmount - 1))
            {
                clAddMessage("Invalid syntax.", c_red);
            }
    }
