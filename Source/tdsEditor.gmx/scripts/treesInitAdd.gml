///treesInitAdd();

currentTree = 0;
xTrees = ceil(room_width / Width);
yTrees = ceil(room_height / Height);
randomAmount = 16;
oppositeSideFactor = 4;

treesInitLoop();
    
treeCount = currentTree;

clAddMessage("Initialized a total of " + string(treeCount) + " tree(s)!");
