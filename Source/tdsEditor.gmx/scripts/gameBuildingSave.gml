///gameBuildingSave();

if !(onWeb)
    {
        var filePlace = get_save_filename_ext("Buildings|*.build", "Building.build", buildingDirectory, "Save the current building");
        if (filePlace == "")
            {
                show_message("Cancelled.");
                exit;
            }
    }
else
    show_message("Outputted room code to debug console. Ask Jackson if you don't know how to get that. Thank you for making buildings for my game!");

_rootList = ds_list_create();

for (var i = 0; i < placedInstancesCount; i ++)
    {
        var _ID = placedInstances[i];
    
        if (instance_exists(_ID))
            {
        
                var _Map = ds_map_create();
                ds_list_add(_rootList, _Map);
                ds_list_mark_as_map(_rootList, ds_list_size(_rootList) - 1);
                
                var _Index = object_get_name(_ID.object_index);
                ds_map_add(_Map, "Index", _Index);
                ds_map_add(_Map, "x", _ID.x);
                ds_map_add(_Map, "y", _ID.y);
                ds_map_add(_Map, "image_index", _ID.image_index);
            }
    }
    
//Wrap
var _Wrapper = ds_map_create();
ds_map_add_list(_Wrapper, "Root", _rootList);
var _String = (json_encode(_Wrapper));

ds_map_destroy(_Wrapper);

if onWeb
    show_debug_message((_String));
else
    string_save(json_beautify(filePlace), _String);
    

