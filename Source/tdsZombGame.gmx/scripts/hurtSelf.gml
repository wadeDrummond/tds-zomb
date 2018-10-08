///hurtSelf(Damage, criticalChance);

var damageTextRange = 12;

if (irandom(argument1) == 0) or (keyboard_check(vk_shift) and (keyboard_check(vk_control) and debugMode))
    {
        hurtAmount = (argument0 * (random_range(2.5, 4)));
        criticalDealt = true;
        audio_play_sound(sndCritical, 1, false);
    }
else
    {
        hurtAmount = (argument0 * (random_range(0.5, 1.25)));
        criticalDealt = false;
    }

hurtAmount = round(hurtAmount);

switch(object_index)
    {
        case objCrate:
            {
                ID = audio_play_sound(sndWoodHit, 0, false);
                audio_sound_pitch(ID, random_range(0.85, 1.05));
                Scale = 0.85;
                break;
            }
    }
    
Health = Health - hurtAmount;
with (instance_create(x + irandom_range(-damageTextRange, damageTextRange), y + irandom_range(-damageTextRange, damageTextRange), objDamageText))
    {
        Damage = string(other.hurtAmount);
        Critical = other.criticalDealt;
    }
