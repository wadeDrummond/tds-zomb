///clInterpretCommand(index, Argument[], argumentCount);

var Argument = argument1;
var argumentCount = argument2;

switch(Command[argument0])
    {
        case "set":
            {
                clSetVariable(Argument[1], Argument[2], Argument[3]);                
                break;
            }
        case "help":
            {
                if (argumentCount <= 1)
                    clHelp("1");
                else
                    clHelp(Argument[1]);

                break;
            }
        case "cicada":
            {
                global.playCicada = true;
                break;
            }
        case "teleport":
            {
                objPlayer.x = real(Argument[1]);
                objPlayer.y = real(Argument[2]);
                
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
                clCreateInstance(real(Argument[1]), real(Argument[2]), Argument[3], Argument[4]);
                break;
            }
        case "clear":
            {
                clInit();
                break;
            }
        case "debug_overlay":
            {
                if Argument[1] == "fps"
                    {
                        if Argument[2] == "true"
                            show_debug_overlay(true);
                        else if (Argument[2]) == "false"
                            show_debug_overlay(false);
                        clAddMessage("Unexpected argument. Accepts an index (fps, audio) and a boolean (true, false).", c_red);
                    }
                else if Argument[1] == "audio"
                    {
                            if (Argument[2]) == "true"
                                audio_debug(true);
                            else if Argument[2] == "false"
                                audio_debug(false);
                            else
                                clAddMessage("Unexpected argument. Accepts an index (fps, audio) and a boolean (true, false).", c_red);
                    }
                else
                    clAddMessage("err", c_red);
                    
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
        case "get_objects":
            {
                clGetObjects();
                break;
            }
        case "spawn_weapon":
            {
                clCreateInstance(string(mouse_x), string(mouse_y), "objWeaponPickup", 1);
                break;
            }
        case "reroll_weapons":
            {
                with (objWeaponPickup)
                    event_perform(ev_create, 0);
                clAddMessage("Reinitialized all weapon pickups.", c_green);
                break;
            }
        case "window_size":
            {
                window_set_size(real(Argument[1]), real(Argument[2]));
                clAddMessage("Attempted to resize window to (" + string(Argument[1]) + "x" + string(Argument[2]) + ").", c_green);
                break;
            }
        case "ben_walker":
            {
                explosionMode = !explosionMode;
                if (explosionMode)
                    clAddMessage("GO CRAZY! RIGHT MOUSE BUTTON TO SPAWN EXPLOSIONS!", -120);
                else
                    clAddMessage("Ben Walker mode off.", c_red);
            }
        case "play_ambient":
            {
                with (objGame)
                    forcePlay = true;
                    
                clAddMessage("Forced objGame to play new ambient noise.", c_green);
                break;
            }
        case "room":
            {
                var _ID = asset_get_index(Argument[1]);
                if _ID != -1
                    {
                        room_goto(_ID);
                        clAddMessage("Went to room " + Argument[1] + ", ID of " + string(_ID) + ".", c_green);
                    }
                else
                    clAddMessage("Could not find room index for " + Argument[1], c_red);
                break;
            }
                
    }
