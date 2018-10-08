///soundPlayRandomPitch(sound, [min], [max]);

var _Sound = audio_play_sound(argument[0], 1, false);

if (argument_count > 1)
   {
        audio_sound_pitch(_Sound, random_range(argument[1], argument[2]));
   }
else
    {
        audio_sound_pitch(_Sound, random_range(0.95, 1.05));
    }
