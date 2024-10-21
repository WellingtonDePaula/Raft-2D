function scrPlayerStateIdle() {
	stateDebug = "Idle";
	
	var arr = playerMove();
	var keys = arr[0];
	var moveDir = arr[1];
	
	if(keys != 0) {
		state = scrPlayerStateMoving;
	}
}

function scrPlayerStateMoving() {
	stateDebug = "Moving";
	
	var arr = playerMove();
	var keys = arr[0];
	var moveDir = arr[1];
	
	if(keys == 0) {
		state = scrPlayerStateIdle;
	}
}