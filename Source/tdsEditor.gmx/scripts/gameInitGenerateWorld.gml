///gameInitGenerateWorld();

var _availableBuildings = ds_list_create();

var _File = file_find_first(buildingDirectory + "*.build", 0)
if _File == "" {show_message("broke - reading") game_end()};
ds_list_add(_availableBuildings, _File);
var _File = file_find_next();
while (_File != "")
    {
        ds_list_add(_availableBuildings, _File);
        _File = file_find_next();
    }
    

if onWeb exit;
    
var _buildingList = ds_list_create();
    
var _File = file_find_first("Buildings\*.build", 0);
if _File == "" {show_message("broke - reading") game_end()};
ds_list_add(_buildingList, "Buildings\" + _File);
var _File = file_find_next();
while (_File != "")
    {
        ds_list_add(_buildingList, "Buildings\" + _File);
        _File = file_find_next();
    }
    
var _Size = ds_list_size(_buildingList);
show_debug_message("Counted " + string(_Size) + " building types.");

buildingGridWidth = room_width / buildingWidth;
buildingGridHeight = room_height / buildingHeight;
var _xFactor = (room_width / buildingGridWidth);
var _yFactor = (room_height / buildingGridHeight);
buildingGrid = ds_grid_create(buildingGridWidth, buildingGridHeight);

var maximumCount = (buildingGridWidth * buildingGridHeight);
var buildingCount = round(maximumCount * buildingPercentage);

var i = 0;
while (i < buildingCount)
    {
        var _xRandom = irandom(buildingGridWidth - 1);
        var _yRandom = irandom(buildingGridHeight - 1);
        if (buildingGrid[# _xRandom, _yRandom] == 0)
            {
                buildingGrid[# _xRandom, _yRandom] = 1;
                
                var _chosenBuilding = irandom(_Size - 1);
                var _chosenFile = _buildingList[| _chosenBuilding];
                var _String = string_load(_chosenFile);
                var newMap = json_decode(_String);
                var _iList = newMap[? "Root"]; 
                show_debug_message("I have decided upon " + string(_xRandom) + ", " + string(_yRandom) + ". Should be at " + string(_xRandom * _xFactor) + ", " + string(_yRandom * _yFactor) + ".");
                gameBuildingPlace(_iList, _xRandom * buildingWidth, _yRandom * buildingHeight);
                
                ds_map_destroy(newMap);
                
                i += 1;
            }
    }

ds_list_destroy(_buildingList);
    
/*
_availableBuildings = gameBuiltinJson();
var _availableBuildingCount = ds_list_size(_availableBuildings);

var buildingGridWidth = room_width div buildingWidth;
var buildingGridHeight = room_height div buildingHeight;
var _xFactor = (room_width / buildingGridWidth);
var _yFactor = (room_height / buildingGridHeight);
buildingGrid = ds_grid_create(buildingGridWidth, buildingGridHeight);

var buildingCount = (3);

for(var i = 0; i < buildingCount; i ++)
    {
        var _xRandom = irandom(buildingGridWidth - 1);
        var _yRandom = irandom(buildingGridHeight - 1);
        if (buildingGrid[# _xRandom, _yRandom] == 0)
            {
                buildingGrid[# _xRandom, _yRandom] = 1;
                
                var _Chosen = _availableBuildings[| irandom(_availableBuildingCount - 1)];
                var newMap = json_decode(_Chosen);
                var _iList = newMap[? "Root"];

                show_debug_message(_Chosen);
                
                gameBuildingPlace(_iList, _xRandom * _xFactor, _yRandom * _yFactor);
                
                ds_map_destroy(newMap);
            }
    }
