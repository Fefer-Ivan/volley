var clamp_x = clamp(phy_position_x, sprite_xoffset, room_width - sprite_xoffset);
if (clamp_x != phy_position_x) {
	phy_position_x = clamp_x;
	phy_speed_x = 0;
}

if (!global.game_is_live) {
	return;
}

var on_land = physics_test_overlap(x, y + 1, 0, obj_floor);

var go_x = 0;
if (going_left) {
	go_x -= 1;
}
if (going_right) {
	go_x += 1;
}
if (go_x != 0) {
	var force = go_air_force;
	if (on_land) {
		force = go_land_force;
	}
	physics_apply_force(x, y, go_x * force, 0);
}

if (on_land && jumping) {	
	physics_apply_impulse(x, y, 0, -jump_impulse);
}

if (strike_action != strike_type.none) {
	if (!strike_available ||
		distance_to_object(obj_ball) > strike_range ||
		obj_ball.y > y ||
		obj_ball.x < our_field_left_x ||
		obj_ball.x > our_field_right_x
	) {
		return;
	}
	
	strike_available = false;
	alarm_set(0, strike_cooldown);

	var dir = opponent_direction;
	var impulse = strike_direct_impulse;
	var secondary_impulse = strike_secondary_impulse;

	var dist = abs(obj_ball.x - obj_net.x) / (our_field_right_x - our_field_left_x);
	switch (strike_action) {
		case strike_type.up:
			var x_multiplier = scr_get_multiplier(strike_up_x_min_multiplier, strike_up_x_max_multiplier, dist);		
			var y_multiplier = scr_get_multiplier(strike_up_y_min_multiplier, strike_up_y_max_multiplier, dist);
			with (obj_ball) {
				physics_apply_impulse(x, y, dir * secondary_impulse * x_multiplier, -impulse * y_multiplier);
			}
			break;
		case strike_type.forward:
			var x_multiplier = scr_get_multiplier(strike_forward_x_min_multiplier, strike_forward_x_max_multiplier, dist);
			var y_multiplier = scr_get_multiplier(strike_forward_y_min_multiplier, strike_forward_y_max_multiplier, dist);
			with (obj_ball) {
				physics_apply_impulse(x, y, dir * impulse * x_multiplier, -secondary_impulse * y_multiplier);
			}
			break;
		case strike_type.pass:
			var x_multiplier = 1;
			var towards_speed = abs(obj_ball.phy_speed_x);
			if (sign(obj_ball.phy_speed_x) == opponent_direction) {
				towards_speed *= -1;
			}
			if (towards_speed >= 0) {
				x_multiplier = towards_speed * pass_speed_multiplier;
			}
			var max_secondary_impulse = pass_max_x_impulse;
			with (obj_ball) {
				physics_apply_impulse(
					x,
					y,
					dir * min(max_secondary_impulse, secondary_impulse * x_multiplier),
					-impulse
				);
			}	
			break;
	}
	
	var angular_impulse = strike_angular_impulse * random_range(-2, 2);
	with (obj_ball) {
		physics_apply_angular_impulse(angular_impulse)
	}
	
	scr_update_touches(obj_ball, id);
}