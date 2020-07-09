run_direction = 0;
jumping = false;
strike_action = strike_type.none;

if (instance_number(obj_ball) == 0 || !global.game_is_live) {
	return;
}
	
var target_x = obj_ball.x;

var good_y = obj_net.y - obj_net.sprite_yoffset / 2;
if (obj_ball.y < good_y) {
	target_x = scr_ball_drop_x(obj_ball, good_y) - opponent_direction * obj_ball.sprite_xoffset / 2;
}

var target_x_on_opponent = 
	(opponent_direction == 1 && target_x > our_field_right_x) ||
	(opponent_direction == -1 && target_x < our_field_left_x);
var target_x_in_out = 
	(opponent_direction == 1 && target_x < our_field_left_x) ||
	(opponent_direction == -1 && target_x > our_field_right_x);
if (target_x_on_opponent ||
	(target_x_in_out && obj_ball.last_touch_player_id != id)) {
	target_x = (our_field_left_x + our_field_right_x) / 2;
}

run_direction = sign(target_x - x);
	
if (obj_ball.x <= x &&
	x <= obj_ball.x - 2 * opponent_direction * obj_ball.sprite_xoffset &&
	obj_ball.y >= obj_net.y - obj_net.sprite_yoffset - 200 &&
	obj_ball.phy_speed_y > 0
) {
	jumping = true;
}

if (strike_available && distance_to_object(obj_ball) <= strike_range) {
	if (obj_ball.y <= obj_net.y - obj_net.sprite_yoffset - obj_ball.sprite_yoffset - 10) {
		strike_action = strike_type.forward;
	} else {	
		var available_strikes = [];
		if (obj_ball.last_touch_player_id != id || obj_ball.touches_left > 1) {
			available_strikes[array_length_1d(available_strikes)] = strike_type.pass;
		}	
		if (sign(obj_ball.phy_speed_x) == 0 || sign(obj_ball.phy_speed_x) == opponent_direction) {
			available_strikes[array_length_1d(available_strikes)] = strike_type.up;
		}
	
		var count = array_length_1d(available_strikes);
		if (count > 0) {
			strike_action = available_strikes[irandom(count-1)];
		}
	}
}