///instance_deactivate_object_region(left, top, width, height, inside, notme, object);

_x1 = argument0;
_y1 = argument1;
_x2 = _x1 + argument2;
_y2 = _y1 + argument3;
_Inside = argument4;
_notMe = argument5;
_Index = argument6;

with (_Index)
    {
        if (id == other.id)
            if (other._notMe)
                break;

        if (rectangle_in_rectangle(other._x1, other._y1, other._x2, other._y2, bbox_left, bbox_top, bbox_right, bbox_bottom) > 0)
            instance_deactivate_object(id);
    }
