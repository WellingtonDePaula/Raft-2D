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
		switch(ground) {
			case "solid":
				state = scrPlayerStateIdleSolid;
				break;
			case "water":
				state = scrPlayerStateIdleWater;
				break;
		}
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

function changeHotbar() {
	for(var i = 0; i < invSlots; i++) {
		if(keyboard_lastchar == inputs.hotbarKeys[i]) {
			slotSelected = keyboard_lastchar-1;
			if(typeof(inv[i][0]) == "ref") {
				if(inv[i][2] == "tool") {
					changeTool(inv[i][0], inv[i][1]);
				}
			} else {
				if(typeof(tool) == "ref") {
					instance_destroy(tool);
					tool = -1;
				}
			}
			keyboard_lastchar = "";
		}
	}
}

function changeTool(object, durability) {
	if(tool == -1) {
		tool = instance_create_layer(x, y, "Tools", object);
		tool.durability = durability;
		tool.invId = self;
	} else {
		if(tool.object_index != object) {
			instance_destroy(tool);
			tool = instance_create_layer(x, y, "Tools", object);
			tool.durability = durability;
			tool.invId = self;
		}
	}
}