///playerStepUpdateAudio();

var _xAudioCenter = mean(view_xview, view_xview + view_wview);
var _yAudioCenter = mean(view_yview, view_yview + view_hview);
var _xVelocity = (x - xprevious);
var _yVelocity = (y - yprevious);

audio_listener_position(x, y, 0);
audio_listener_orientation(0, 0, 1, 0, -1, 0);

if !onWeb
    {
        audio_listener_velocity(_xVelocity, _yVelocity, 0);
    }

//Heartbeats
var healthRatio = (statsMap[? Stats.Health] / statsMap[? Stats.maxHealth])
if (healthRatio <= 0.5)
    {
        hbAmount = lerp(1, 0, healthRatio / 0.65);
        audio_sound_gain(heartbeatIndex, hbAmount, 0);
        hbAlarm = round(room_speed * lerp(heartbeatMin, heartbeatMax, hbAmount));
    }
else
    {
        hbAmount = 0;
        audio_sound_gain(heartbeatIndex, 0, 0);
        hbAlarm = heartbeatMax * 4;
    }
