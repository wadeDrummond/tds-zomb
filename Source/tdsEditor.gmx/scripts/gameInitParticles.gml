///gameInitParticles();

enum particleTypes
    {
        Fire, fireEmbers, Leaves
    }

globalvar partSys, pType;
var pFire, pFireEmbers, pLeaves;

partSys = part_system_create();

pType[particleTypes.Fire] = part_type_create();
pType[particleTypes.fireEmbers] = part_type_create();
pType[particleTypes.Leaves] = part_type_create();

pFire = pType[particleTypes.Fire];
pFireEmbers = pType[particleTypes.fireEmbers];
pLeaves = pType[particleTypes.Leaves];

part_type_sprite(pFire, partFire, false, false, true);
part_type_size(pFire, 1.5, 3, -0.05, 0);
part_type_orientation(pFire, 0, 360, 2, 0, 0);
part_type_color2(pFire, c_orange, c_red);
part_type_alpha3(pFire, 0, 0.75, 0);
part_type_blend(pFire, true);
part_type_direction(pFire, 60, 120, 0, 0);
part_type_speed(pFire, 1, 5, -0.1, 0);
part_type_life(pFire, 45, 120);

part_type_sprite(pFireEmbers, partFireEmber, false, false, true);
part_type_size(pFireEmbers, 0.5, 0.75, -0.001, 0);
part_type_orientation(pFireEmbers, 0, 360, 0.05, 0, 0);
part_type_color2(pFireEmbers, c_orange, c_red);
part_type_alpha3(pFireEmbers, 0, 1, 0);
part_type_blend(pFireEmbers, true);
part_type_direction(pFireEmbers, 75, 105, 0.01, 0.01);
part_type_speed(pFireEmbers, 1, 2, 0, 0);
part_type_life(pFireEmbers, 120, 180);

part_type_sprite(pLeaves, partLeaves, false, false, true);
part_type_alpha3(pLeaves, 1, 1, 0);
part_type_orientation(pLeaves, 0, 360, 1.65, 0, false);
part_type_speed(pLeaves, 0.25, 1, -0.0015, 0);
part_type_life(pLeaves, room_speed * 2, room_speed * 15);
part_type_scale(pLeaves, 1.5, 1.5);
part_type_size(pLeaves, 0.65, 1.45, 0, 0);
part_type_direction(pLeaves, 0, 360, 0, 5);
