///playerInitPrimary();

playerInitCheckSpawn();
playerInitWeapons();
playerInitMovement();
playerInitStates();
playerInitAnimation();
playerInitStats();
playerInitInventory();
playerInitFootsteps();
playerInitAudio();
playerInitCamera();

pl_light_init(128, c_white, 0.2);

alarm[0] = 1;
alarm[1] = 1;
alarm[2] = 1;

updateFramerate = 0;
updateFramerateReal = 0;
