cellWidth = 32;
cellHeight = 32;

cellHAmount = room_width div cellWidth;
cellVAmount = room_height div cellHeight;

global.grid = ds_grid_create(cellHAmount, cellVAmount);

global.grid[# cellHAmount div 2, cellVAmount div 2] = instance_create_layer((cellHAmount div 2) * cellWidth, (cellVAmount div 2) * cellHeight, "Platforms", objPlatform);