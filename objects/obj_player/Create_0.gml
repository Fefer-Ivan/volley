enum strike_type {
	up,
	forward,
	pass,
	none
};

phy_fixed_rotation = true;

game_score = 0;

going_left = false;
going_right = false;
jumping = false;

strike_action = strike_type.none;
strike_available = true;

our_field_left_x = 0;
our_field_right_x = room_width / 2;
opponent_direction = 1;