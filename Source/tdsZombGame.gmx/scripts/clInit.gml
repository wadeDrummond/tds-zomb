///clInit();

if (ds_exists(lineList, ds_type_list))
    {
        ds_list_destroy(lineList);
    }

if (ds_exists(colourList, ds_type_list))
    {
        ds_list_destroy(colourList);
    }

lineList = ds_list_create();
colourList = ds_list_create();
