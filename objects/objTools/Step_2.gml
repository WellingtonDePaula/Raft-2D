if(durability <= 0) {
	instance_destroy();
}
if(instance_exists(invId)) {
	script_execute(state);
} else {
	instance_destroy();
}