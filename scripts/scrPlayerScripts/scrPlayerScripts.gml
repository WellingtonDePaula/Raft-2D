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
	var horizontalIndex, verticalIndex;
	horizontalIndex = x div ds_grid_width(global.grid);
	verticalIndex = y div ds_grid_height(global.grid);
	
}