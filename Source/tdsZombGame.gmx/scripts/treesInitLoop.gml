///treesInitLoop();

for (var i = 0; i < treeLayerAmount; i ++)
    {
        for (var xx = 0; xx < xTrees; xx ++)
            {
                for (var yy = 0; yy < yTrees; yy ++)
                    {
                        if ((xx == 0) or (xx == (xTrees - 1)) or (yy == 0) or (yy == (yTrees - 1)))
                            {
                                currentTree += 1;
                                xPos[currentTree] = (Width * xx);
                                yPos[currentTree] = (Height * yy);
                            }
                    }
            }
    }
