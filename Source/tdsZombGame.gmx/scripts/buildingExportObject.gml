/// buildingExportObject(id);

switch (objectGetExportType(argument0.object_index))
    {
        case objectExports.buildingPlacable:
            {
                var tempMap = ds_map_create();
                tempMap[? "objectName"] = object_get_name(argument0.object_index);
                tempMap[? "x"] = argument0.x;
                tempMap[? "y"] = argument0.y;
                
                var jsonEncode = json_encode(tempMap);
                return jsonEncode;
                
                ds_map_destroy(tempMap);
                
                break;
            }

        case -1:
            {
                return -1;
                break;
            }
    }
