///gameBuildingLoad();

if (onWeb)
    var _String = (get_string("Input building code.", ""));
else
    {
        var filePlace = get_open_filename_ext("Buildings|*.build", "Building.build", buildingDirectory, "Load a building");
        if (filePlace != "")
            var _String = (string_load(filePlace));
        else
            {
                show_message("Cancelled.");
                exit;
            }
    }
            
    
for (var i = 0; i < placedInstancesCount; i ++)
    if instance_exists(placedInstances[i])
        instance_destroy(placedInstances[i]);
placedInstancesCount = 0;

var newMap = json_decode(_String);
var List = newMap[? "Root"];

gameBuildingPlace(List, 0, 0);
    
with (parDoor)
    event_user(1);
    
ds_map_destroy(newMap);
