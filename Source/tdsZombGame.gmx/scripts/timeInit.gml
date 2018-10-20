///timeInit();

Time = 0;
defaultTimeScale = 1;
timeScale = defaultTimeScale * 1;
Speed = (1 / (room_speed * timeScale));
drawTime = lerp(lerp(0, 4, Time), 0, Time);

var ambientColour = merge_colour(c_blue, merge_colour(c_orange, c_white, Time), Time);
var Brightness = lerp(0.05, 1, Time);

pl_option_set_ambience(ambientColour, 0.25);

Minutes = 0;
Hours = 11;

global.timeHours = Hours;
global.timeMinutes = Minutes;
global.interpTime = drawTime;
