function scrHammerStateIdle() {
	debugState = "idleHammer";
	
	toolChasePlayer();
	
	if(point_in_circle(mouse_x, mouse_y, x, y, distToUse)) {
		if(mouse_check_button_pressed(invId.inputs.use)) {
			useTool("hammer");
		}
	}
}