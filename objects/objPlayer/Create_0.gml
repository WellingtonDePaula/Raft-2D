event_inherited();

state = scrPlayerStateIdleSolid;

vel = 1;

inputs = {
	right: ord("D"),
	left: ord("A"),
	down: ord("S"),
	up: ord("W"),
}

invSlots = 3;
invSelected = 0;
inv = array_create(invSlots, [noone, sprNoone, 0]);
array_set(inv, 0, [objHammer, sprHammer, 20]);