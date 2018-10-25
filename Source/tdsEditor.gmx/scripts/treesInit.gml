///treesInit();

Width = sprite_width * 0.5;
Height = sprite_height * 0.5;
treeLayerAmount = 1;
randomOffset = 32;
treesInitAdd();
    
for (var i = 0; i < treeCount; i ++)
    {
        Scale[i] = random_range(1.25, 1.75);
        treeAngle[i] = 0;
        treeAngleTime[i] = random_range(6, 8);
        treeAngleOffset[i] = irandom(treeAngleTime[i]);
        xPos[i] += irandom_range(-randomOffset, randomOffset);
        yPos[i] += irandom_range(-randomOffset, randomOffset);
    }
    
subScale = 0.5;
subAngleFactor = 1.5;

oldSystem = false;

canSpawnCicada = false;
cicadaTimer = room_speed * 5;
cicadaTimerMax = room_speed * 20;

viewDistance = (max(view_wview, view_hview) * 1.25);

windSound = audio_play_sound(sndWind, 1, true);
windDistanceMax = (room_width / 2) + (room_height / 2) * 1.25;
windMin = 0;
windMax = 0.85;
windDistanceFactor = 8;

global.playCicada = false;

particleTimer = room_speed;
particleTimerMin = room_speed * 0.1;
particleTimerMax = room_speed;
