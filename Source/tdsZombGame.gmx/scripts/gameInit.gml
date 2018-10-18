///gameInit();

globalvar timeString, healthScale, Shake, roomWidth, roomHeight, buildingCount;

//Upscale to 1080p
surface_resize(application_surface, 1920, 1080);

//Create Necessary Objects
instance_create(0, 0, objLightEngine);
instance_create(0, 0, objTrees);
//instance_create(irandom(room_width), irandom(room_height), objPlayer);

//Set Up the App Surface to be drawn with the Shader
application_surface_draw_enable(false);
display_set_gui_size(surface_get_width(application_surface), surface_get_height(application_surface));

//Randomly Add Details
repeat(irandom(20))
    instance_create(irandom(room_width), irandom(room_height), objSmear);

//Create Debug Object
if (debugMode)
    instance_create(0, 0, objDebug);

//Set Cursor
window_set_cursor(cr_none);
cursor_sprite = sprCrosshair;

//Setup Building Exports
enum objectExports
    {
        buildingPlacable, customTile
    }
    
//Set Globals
timeString = "";
healthScale = 1;
Shake = 0;
roomWidth = 1280 * 4;
roomHeight = 720 * 4;
buildingCount = 15;
