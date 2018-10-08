///clSetTime(hours, minutes);

objLightEngine.Hours = real(argument0);
objLightEngine.Minutes = real(argument1);

clAddMessage("Attempted to set hours to " + argument0 + ", minutes to " + argument1, c_green);
