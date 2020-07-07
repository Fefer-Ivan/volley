going_left = keyboard_check(vk_left);
going_right = keyboard_check(vk_right);
jumping = keyboard_check(vk_space);

strike_action = strike_type.none;
if (keyboard_check(ord("C"))) {
	strike_action = strike_type.up;
} else if (keyboard_check(ord("X"))) {
	strike_action = strike_type.forward;
} else if (keyboard_check(ord("Z"))) {
	strike_action = strike_type.pass;
}