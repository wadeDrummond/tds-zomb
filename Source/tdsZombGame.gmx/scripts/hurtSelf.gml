///hurtSelf(Damage, criticalChance);

var damageTextRange = 12;

if (irandom(argument1) == 0)
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
                soundPlayRandomPitch(sndWoodHit);
                Scale = 0.85;
                flashFactor = 1;
                break;
            }
        case objZombie:
            {
                var _soundIndex = choose(sndActorHit1, sndActorHit2, sndActorHit3);
                soundPlayRandomPitch(_soundIndex)
                break;
            }
    }
    
Health = Health - hurtAmount;
with (instance_create(x + irandom_range(-damageTextRange, damageTextRange), y + irandom_range(-damageTextRange, damageTextRange), objDamageText))
    {
        Damage = string(other.hurtAmount);
        Critical = other.criticalDealt;
    }
