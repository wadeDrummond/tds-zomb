///objectGetExportType(object_index);

switch (argument0)
    {
        case objWoodenWallHorizontal:
        case objWoodenWallVertical:
        case objCorner:
        case objCrate:
        case objTable:
            {
                return objectExports.buildingPlacable;
                break;
            }
          
        case objNoTile:
            {
                return objectExports.customTile;
                break;
            }

        default:
            {
                return -1;
                break;
            }
    }
