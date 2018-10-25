/// buildingExportObject(id);

switch (objectGetExportType(argument0.object_index))
    {
        case objectExports.buildingPlacable:
            {
                with (argument0)
                    {
                        var tempMap = ds_map_create();
                        
                        ds_list_add(other.motherList, tempMap);
                        ds_list_mark_as_map(other.motherList, ds_list_size(motherList) - 1);
                        
                        tempMap[? "objectName"] = object_get_name(argument0.object_index);
                        tempMap[? "x"] = argument0.x;
                        tempMap[? "y"] = argument0.y;
                    }
                
                var _Wrapper = ds_map_create();
                ds_map_add_list(_Wrapper, "ROOT", motherList);
                
                var jsonEncode = json_encode(_Wrapper);
                
                break;
            }

        case -1:
            {
                return -1;
                break;
            }
    }
    
return jsonEncode;
