///soundPlayRandomPitch(sound, [min], [max]);

var _Sound = audio_play_sound(argument[0], 1, false);

if (argument_count > 1)
    var _Pitch = random_range(argument[1], argument[2]);
    
else
    var _Pitch = random_range(0.95, 1.05);
    
audio_sound_pitch(_Sound, _Pitch);

return _Sound;
//clAddMessage("Played " + sound_get_name(argument[0]) + " with pitch " + string(_Pitch) + ".");
