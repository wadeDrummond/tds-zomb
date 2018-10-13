///clHelp();

var baseColour = c_white;
var subColour = c_dkgray;

clInit();

switch (real(argument0))
    {
        case 1:
            {
                clAddMessage("TDS Demo by Jackson Drummond. " + gameVersion, -135);
                clAddBlank();
                clAddMessage("help (index)", baseColour);
                clAddMessage("Shows this message.", subColour);
                clAddBlank();
                clAddMessage("set (object/instance) (variable) (value)", baseColour);
                clAddMessage("Sets the variable of an instance or object type.", subColour);
                clAddBlank();
                clAddMessage("cicada", baseColour);
                clAddMessage("Spawns a cicada in a random tree.", subColour);
                clAddBlank();
                clAddMessage("teleport (x) (y)", baseColour);
                clAddMessage("Teleports the player to the given coordinates. [SOMETIMES CRASHES ON HTML5.]", subColour);
                clAddBlank();
                clAddMessage("restart", baseColour);
                clAddMessage("Restarts the game.", subColour);
                clAddBlank();
                clAddMessage("quit", baseColour);
                clAddMessage("Quits the game.", subColour);
                clAddBlank();
                clAddMessage("create (x) (y) (object_index) (count)", baseColour);
                clAddMessage("Creates (count) instance(s) of (object_index) at (x, y).", subColour);
                clAddBlank();
                clAddMessage("clear", baseColour);
                clAddMessage("Clears the command console.", subColour);
                clAddBlank();
                clAddMessage("debug_overlay (true/false)", baseColour);
                clAddMessage("Toggles the debug overlays. (Framerate counter/audio debugger.) Sometimes works on HTML5.", subColour);
                clAddBlank();
                clAddMessage("set_time (hours) (minutes)", baseColour);
                clAddMessage("Sets the time of the day night cycle. Uses the 24 hour clock model.", subColour);
                clAddBlank();
                clAddMessage("set_stat (stat) (value)", baseColour);
                clAddMessage("Sets (Health, Stamina, Hunger, Thirst, maxHealth, maxStamina, maxHunger, maxThirst, critChance) to (value).", subColour);
                clAddMessage("Showing page (1/2) of 'help'.", c_yellow)
                break;
            }
        case 2:
            {
                clAddMessage("TDS Demo by Jackson Drummond. " + gameVersion, -135);
                clAddBlank();
                clAddMessage("set_global (variable) (value)", baseColour);
                clAddMessage("Sets a global variable to (value).", subColour);
                clAddBlank();
                clAddMessage("shake (value)", baseColour);
                clAddMessage("Adds (value) to the global shake amount.", subColour);
                clAddBlank();
                clAddMessage("get_objects", baseColour);
                clAddMessage("Lists all objects in the game.", subColour);
                clAddMessage("Showing page (2/2) of 'help'.", c_yellow)
                break;
            }
        default:
            {
                clAddMessage("Unkown help index.", c_red);
                break;
            }
    }
