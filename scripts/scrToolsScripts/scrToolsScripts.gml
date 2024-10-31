function defaultToolState() {
	debugState = "defaultTool";
	
	switch(self.object_index) {
		case objHammer:
			state = scrHammerStateIdle;
			break
		case objPickaxe:
			state = scrPickaxeStateIdle;
			break;
	}
}

function toolChasePlayer() {
	var dir = point_direction(x, y, mouse_x, mouse_y);
	x = invId.x;
	y = invId.y;
	
	toolX = x + lengthdir_x(7, dir);
	toolY = y + lengthdir_y(1, dir);
}