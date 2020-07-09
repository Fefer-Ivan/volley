var clamp_x = clamp(phy_position_x, sprite_xoffset, room_width - sprite_xoffset);
if (clamp_x != phy_position_x) {
	phy_position_x = clamp_x;
	phy_speed_x = 0;
}

if (!global.game_is_live) {
	return;
}

var on_land = physics_test_overlap(x, y + 1, 0, obj_floor);

if (run_direction != 0) {
	var acceleration = go_air_acceleration;
	if (on_land) {
		acceleration = go_land_acceleration;
	}
	physics_apply_local_force(x, y, run_direction * acceleration * phy_mass, 0);
}

if (on_land && jumping) {	
	physics_apply_local_impulse(x, y, 0, -jump_speed * phy_mass);
}