/// @description Set name
// Inherit the parent event
event_inherited();

enum control_type {
	keyboard,
	gamepad
};

control = control_type.keyboard;
gamepad_device_id = -1;
name = "Player 1";