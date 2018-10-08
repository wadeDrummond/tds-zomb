///gameInitGenerateWorld();

room_width = roomWidth;
room_height = roomHeight;

var buildingGridWidth = roomWidth / buildingWidth;
var buildingGridHeight = roomHeight / buildingHeight;

buildingCount = clamp(buildingCount, 0, (buildingGridWidth * buildingGridHeight));

buildingGrid = ds_grid_create(buildingGridWidth, buildingGridHeight);

for(var i = 0; i < buildingCount; i ++)
    {
        var _xRandom = irandom(buildingGridWidth);
        var _yRandom = irandom(buildingGridHeight);
        if (buildingGrid[# _xRandom, _yRandom] == 0)
            {
                buildingGrid[# _xRandom, _yRandom] = irandom(buildingCount);
            }
    }
