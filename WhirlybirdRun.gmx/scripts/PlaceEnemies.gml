entity_count = 80;
spacing = room_width / entity_count;
for (i = 0; i < room_width; i += spacing)
{
    var entity_type = irandom_range(0,4);
    var entity_x = irandom_range(i+120, i + 120 + spacing);
    var entity_y = 0;
    var nearest_terrain = instance_nearest(entity_x, 0, oTerrain);
    
    var entity;
    switch (entity_type)
    {
    case 0: entity = instance_create(entity_x, entity_y, oFuel); break;
    case 1: case 2: case 3: entity = instance_create(entity_x, entity_y, oRocket); break;
    case 4: entity = instance_create(entity_x, entity_y, oMushroom); break;
    }
    
    with (entity)
    {
        var tmpy = 0;
        while(tmpy < room_height)
        {
            tmpy += 4;
            if (place_meeting(x, tmpy, oTerrain))
            {
                y = tmpy;
                break;
            }
        }
    }
    
}
