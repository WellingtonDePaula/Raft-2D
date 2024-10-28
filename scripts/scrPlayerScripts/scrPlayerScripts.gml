function playerMove() {
	var right, left, down, up, keys, moveDir;
	right = keyboard_check(inputs.right);
	left = keyboard_check(inputs.left);
	down = keyboard_check(inputs.down);
	up = keyboard_check(inputs.up);
	
	keys = right - left != 0 || down - up != 0;
	moveDir = point_direction(0, 0, right - left, down - up);
	
	velh = lengthdir_x(vel * keys, moveDir);
	velv = lengthdir_y(vel * keys, moveDir);
	
	return [keys, moveDir];
}

function verifyPlayerSurface() {
	var hor = x div objMap.cellWidth;
	var ver = y div objMap.cellHeight;
	var type = ds_grid_get(global.grid, hor, ver);
	if(typeof(type) == "ref") {
		return type.type;
	} else {
		return type;
	}
}

function groundChange(ground, isIdle) {
	if(isIdle) {
		
	} else {
		switch(ground) {
			case "solid":
				state = scrPlayerStateMovingSolid;
				break;
			case "water":
			state = scrPlayerStateMovingWater;
			break;
		}
	}
}