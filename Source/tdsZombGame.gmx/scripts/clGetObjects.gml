///clGetObjects();

var Objects = gameGetObjectNames();

clInit();

for (var i = 0; i < ds_list_size(Objects); i ++)
    {
        clAddMessage(Objects[| i], c_yellow);
    }
    
ds_list_destroy(Objects);

clAddBlank();
clAddMessage("Listed all object indexes.", c_green);
