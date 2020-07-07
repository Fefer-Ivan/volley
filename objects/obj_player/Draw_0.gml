/// @description Draw strike cooldown

draw_self();

var strike_cooldown_left = alarm_get(0);
if (strike_cooldown_left > 0) {
	draw_healthbar(
		x - sprite_xoffset - 10,
		y + sprite_yoffset - 5,
		x + sprite_xoffset + 10,
		y + sprite_yoffset,
		(strike_cooldown_left / strike_cooldown) * 100,
		c_black,
		c_green,
		c_green,
		0,
		true,
		true
	);
}