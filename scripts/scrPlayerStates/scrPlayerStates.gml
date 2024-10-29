function scrPlayerStateIdleSolid() {
	stateDebug = "Idle";
	
	ground = verifyPlayerSurface();
	groundChange(ground, true);
	
	#region movement code
	
	var arr = playerMove();
	var keys = arr[0];
	var moveDir = arr[1];
	velh = 0;
	velv = 0;
	
	#endregion
	
	if(keys != 0) {
		state = scrPlayerStateMovingSolid;
	}
}

function scrPlayerStateMovingSolid() {
	stateDebug = "Moving";
	
	ground = verifyPlayerSurface();
	groundChange(ground, false);
	
	vel = 1;
	
	#region movement code
	
	var arr = playerMove();
	var keys = arr[0];
	var moveDir = arr[1];
	
	#endregion
	
	if(keys == 0) {
		state = scrPlayerStateIdleSolid;
	}
}

function scrPlayerStateMovingWater() {
	stateDebug = "MovingWater";
	
	ground = verifyPlayerSurface();
	groundChange(ground, false);
	
	vel = .6;
	
	#region movement code
	
	var arr = playerMove();
	var keys = arr[0];
	var moveDir = arr[1];
	
	#endregion
	
	if(keys == 0) {
		state = scrPlayerStateIdleWater;
	}
}

function scrPlayerStateIdleWater() {
	stateDebug = "IdleWater";
	
	ground = verifyPlayerSurface();
	groundChange(ground, true);
	
	#region movement code
	
	var arr = playerMove();
	var keys = arr[0];
	var moveDir = arr[1];
	velh = 0;
	velv = 0;
	
	#endregion
	
	if(keys != 0) {
		state = scrPlayerStateMovingSolid;
	}
}