///playerInitFootsteps();

footstepThreshold = (sprite_get_number(sprPlayerLegs) - 2) / 2;
footstepCounter = (footstepThreshold / 2);

footstepIndexes[footstepTypes.Grass, 0] = footstepGrass1;
footstepIndexes[footstepTypes.Grass, 1] = footstepGrass2;
footstepIndexes[footstepTypes.Concrete, 0] = footstepConcrete1;
footstepIndexes[footstepTypes.Concrete, 1] = footstepConcrete2;
