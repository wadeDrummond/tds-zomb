///ambientIsPlaying(array);

var _Array = argument0;
var _Length = array_length_1d(_Array);

for (var i = 0; i < _Length; i ++)
    {
        if (audio_is_playing(_Array[i]))
            {
                return true;
            }
    }

return false;
