///gameGetResourceCounts();

var maxNumberCount = 1000000;
var resourceCounts;

resourceCounts[0] = 0;
resourceCounts[1] = 0;
resourceCounts[2] = 0;
resourceCounts[3] = 0;
resourceCounts[4] = 0;

for (var i = 0; i < maxNumberCount; i ++)
    {
        if (sprite_exists(i))
            {
                resourceCounts[0] += 1;
            }
        else break;
    }
    
for (var i = 0; i < maxNumberCount; i ++)
    {
        if (sound_exists(i))
            {
                resourceCounts[1] += 1;
            }
        else break;
    }
    
for (var i = 0; i < maxNumberCount; i ++)
    {
        if (script_exists(i))
            {
                resourceCounts[2] += 1;
            }
        else break;
    }
    
for (var i = 0; i < maxNumberCount; i ++)
    {
        if (object_exists(i))
            {
                resourceCounts[3] += 1;
            }
        else break;
    }
    
for (var i = 0; i < maxNumberCount; i ++)
    {
        if (room_exists(i))
            {
                resourceCounts[4] += 1;
            }
        else break;
    }
    
return resourceCounts;
