///playerDrawHealthbars();

healthbarWidth = 96;
healthbarHeight = 12;

with (all)
    {
        if (canBeDamaged(object_index))
            {
                var healthAmount = (Health / maxHealth) * 100;
                
                if (healthAmount < 100)
                    {
                        show_debug_message(object_get_name(object_index));
                        
                        var _x1 = (x - view_xview) - other.healthbarWidth + xOffsetHealthbar;
                        var _y1 = (y - view_yview) - other.healthbarHeight + yOffsetHealthbar;
                        var _x2 = (x - view_xview) + other.healthbarWidth + xOffsetHealthbar;
                        var _y2 = (y - view_yview) + other.healthbarHeight + yOffsetHealthbar;
                        
                        draw_healthbar(_x1, _y1, _x2, _y2, healthAmount, c_black, c_maroon, c_red, 0, true, true);
                    }
            }
    }
