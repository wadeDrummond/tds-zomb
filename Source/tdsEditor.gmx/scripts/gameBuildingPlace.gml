///gameBuildingPlace(list, x, y);

var _List = argument0;
var _xOffset = argument1;
var _yOffset = argument2;

var listSize = ds_list_size(_List);

for (var i = 0; i < listSize; i ++)
    {
        var _Map = _List[| i];
        var _Index = asset_get_index(_Map[? "Index"]);
        var _x = _Map[? "x"];
        var _y = _Map[? "y"];
        var _imageIndex = _Map[? "image_index"];
        
        var _ID = instance_create(_xOffset + _x, _yOffset + _y, _Index);
        _ID.image_index = _imageIndex;
        
        if (object_is_ancestor(_ID.object_index, parDoor))
            with (_ID)
                {
                    revertFactor = 1;
                    event_user(1);
                }

        if (room == roomLevelEditor)
            {
                placedInstances[i] = _ID;
                placedInstancesCount += 1;

                /*
                _ID.createdObject = -1;
                for (var i = 0; i < objectAmount; i ++)
                    {
                        if (_ID.object_index == (Objects[i]))
                            {
                                if (_ID.object_index == objTile)
                                    {
                                        if (_ID.image_index == (objectIndex[i]))
                                            {
                                                _ID.createdObject = i;
                                                break;
                                            }
                                    }
                                else
                                    {
                                        _ID.createdObject = i;
                                    }
                            }
                    }
                    
                if (_ID.createdObject == -1)
                    {
                        show_message("Error loading building. Could not load " + string(_Map[? "Index"]));
                        room_restart();
                        break;
                    }
                */
            }
    }
