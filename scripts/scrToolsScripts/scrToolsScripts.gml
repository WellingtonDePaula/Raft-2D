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
	
	image_xscale = invId.image_xscale;
	
	toolX = x + (xDistFromPlayer * invId.image_xscale);
	toolY = y + yDistFromPlayer;
}

function useTool(toolId) {
	switch(toolId) {
		case "hammer":
			
			break;
	}
}