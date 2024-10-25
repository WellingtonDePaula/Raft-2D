cellWidth = 32;
cellHeight = 32;

cellHAmount = room_width div cellWidth;
cellVAmount = room_height div cellHeight;

global.grid = ds_grid_create(cellHAmount, cellVAmount);

platformWidth = 2;
platformHeight = 1;

for(var i = 0; i < cellHAmount; i++) {
	for(var j = 0; j < cellVAmount; j++) {
		if(i <= (cellHAmount div 2) + platformWidth && i >= (cellHAmount div 2) - platformWidth && j <= (cellVAmount div 2) + platformHeight && j >= (cellVAmount div 2) - platformHeight) {
			ds_grid_add(global.grid, i, j, instance_create_layer(0 + (cellWidth*i), 0 + (cellHeight*j), "Platforms", objPlatform));
		}
	}
}