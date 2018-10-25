///gameGetObjectNames();

var Temp = gameGetResourceCounts();
var objectCount = Temp[3];

objectNames = ds_list_create();

for (var i = 0; i < objectCount; i ++)
    {
        if (object_exists(i))
            {
                ds_list_add(objectNames, object_get_name(i));
            }
    }
    
return objectNames;
