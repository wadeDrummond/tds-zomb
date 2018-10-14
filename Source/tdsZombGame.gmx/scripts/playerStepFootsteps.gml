///playerStepFootsteps();

var _ID = instance_place(x, y, zoneFootsteps);
if (_ID != noone)
    var _currentMaterial = _ID.zoneType;
else
    var _currentMaterial = footstepTypes.Grass;
                       
if (legAnimSpeed == 0)
    footstepCounter = 0;
else
    footstepCounter += (legAnimSpeed);

if (footstepCounter >= footstepThreshold)
    {
        footstepCounter = 0;
        soundPlayRandomPitch(footstepIndexes[_currentMaterial, irandom(1)]);
    }
