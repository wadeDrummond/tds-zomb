///playerStepFootsteps();

var addAmount = (abs(hsp[0]) / maxhspd) + (abs(vsp[0]) / maxvspd);

footstepCounter += addAmount;
if (foostepCounter >= footstepThreshold)
    {
        footstepCounter = 0;
    }
