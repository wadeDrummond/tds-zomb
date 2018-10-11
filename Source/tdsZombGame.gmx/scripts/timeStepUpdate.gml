///timeStepUpdate();

if (debugMode)
    {
        if (keyboard_check(vk_space))
            {
                timeScale = (defaultTimeScale / 50);
            }
        else
            {
                timeScale = defaultTimeScale;
            }
    }

Speed = (1 / (room_speed * timeScale));

if (Minutes >= 60)
    {
        Minutes = 0;
        Hours += 1;
    }
else
    {
        Minutes += Speed;
    }
    
if (Hours > 24)
    {
        Hours = 1;
    }

Time = (((60 * (Hours - 1)) + Minutes) / 60) / 24;

drawTime = lerp(lerp(0, 4, Time), 0, Time);

var ambientColour = merge_colour(c_blue, merge_colour(c_orange, c_white, drawTime), drawTime);
var Brightness = lerp(max(lerp(-0.15, 0, drawTime), 0), 0.75, drawTime);

pl_option_set_ambience(ambientColour, Brightness);

if (Hours > 12) and (Hours != 24)
    {
        hourDraw = string(floor(Hours) - 12);
        Mirid = "PM";
    }

else if (Hours == 12)
    {
        hourDraw = string(floor(Hours));
        Mirid = "PM";
    }

else if (Hours == 24)
    {
        hourDraw = string(floor(Hours - 12));
        Mirid = "AM";
    }
    
else
    {
        hourDraw = string(floor(Hours));
        Mirid = "AM";
    }


if (Minutes >= 10)
    {
        minuteDraw = string(floor(Minutes));
    }

else
    {
        minuteDraw = "0" + string(floor(Minutes));
    }

timeString = hourDraw + ":" + minuteDraw + " " + Mirid;
    
global.timeHours = Hours;
global.timeMinutes = Minutes;
global.interpTime = drawTime;
