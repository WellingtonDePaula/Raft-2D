for(var i = 0; i < cellVAmount; i++) {
	for(var j = 0; j < cellHAmount; j++) {
		draw_sprite(sprFrame, 0, 0 + (cellWidth*j), 0 + (cellHeight*i));
		if(point_in_rectangle(mouse_x, mouse_y, j*cellWidth+1, i*cellHeight+1, (j*cellWidth)+cellWidth, (i*cellHeight)+cellHeight)) {
			draw_sprite(sprSelector, 0, 0 + (cellWidth*j), 0 + (cellHeight*i));
		}
	}
}