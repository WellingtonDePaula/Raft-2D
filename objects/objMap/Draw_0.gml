if(global.canDrawGrid) {
	for(var i = 0; i < cellHAmount; i++) {
		for(var j = 0; j < cellVAmount; j++) {
			draw_rectangle(i * cellWidth, j * cellHeight, i * cellWidth + cellWidth - 1, j * cellHeight + cellHeight - 1, true);
			if(point_in_rectangle(mouse_x, mouse_y, i*cellWidth+1, j*cellHeight+1, (i*cellWidth)+cellWidth, (j*cellHeight)+cellHeight)) {
				draw_rectangle(i * cellWidth, j * cellHeight, i * cellWidth + cellWidth - 1, j * cellHeight + cellHeight - 1, false);
			}
		}
	}
}