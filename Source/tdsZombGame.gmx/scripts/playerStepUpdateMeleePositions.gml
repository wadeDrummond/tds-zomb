///playerStepUpdateMeleePositions();

var Range = weaponRange[currentWeapon];
var sideMultiplier = 1;
var angleDifference = 35;

xMeleeTri[0] = x + lengthdir_x(32, playerAngle - 180);
yMeleeTri[0] = y + lengthdir_y(32, playerAngle - 180);
xMeleeTri[1] = x + lengthdir_x(Range * sideMultiplier, playerAngle - angleDifference);
yMeleeTri[1] = y + lengthdir_y(Range, playerAngle - angleDifference);
xMeleeTri[2] = x + lengthdir_x(Range * sideMultiplier, playerAngle + angleDifference);
yMeleeTri[2] = y + lengthdir_y(Range, playerAngle + angleDifference);
