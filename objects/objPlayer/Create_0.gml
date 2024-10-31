event_inherited();

state = scrPlayerStateIdleSolid;

vel = 1;

inputs = {
	right: ord("D"),
	left: ord("A"),
	down: ord("S"),
	up: ord("W"),
	hotbarKeys: [1, 2, 3],
}

invSlots = 3;
slotSelected = -1;
inv = array_create(invSlots, [-1, 0, "noone"]);
array_set(inv, 0, [objHammer, 20, "tool"]);
array_set(inv, 1, [objPickaxe, 20, "tool"]);
show_debug_message(inv)

tool = -1;