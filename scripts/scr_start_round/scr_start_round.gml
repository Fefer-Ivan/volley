/// @description Start game round
// scr_start_round(serving_player, player_left, player_right)

var serving_player = argument0;
var player_left = argument1;
var player_right = argument2;

var field_size = 512;

player_left.our_field_left_x = obj_net.x - field_size;
player_left.our_field_right_x = obj_net.x;
player_left.opponent_direction = 1;

player_right.our_field_left_x = obj_net.x;
player_right.our_field_right_x = obj_net.x + field_size;
player_right.opponent_direction = -1;

while (instance_number(obj_ball) > 0) {
	instance_destroy(instance_find(obj_ball, 0));
}

var start_x_left;
var start_x_right;
var start_x_ball;
if (serving_player == 0) {
	start_x_left = obj_net.x - 3 * player_left.opponent_direction * field_size / 4;
	start_x_right = obj_net.x - player_right.opponent_direction * field_size / 2;
	start_x_ball = start_x_left;
} else {
	start_x_left = obj_net.x - player_left.opponent_direction * field_size / 2;
	start_x_right = obj_net.x - 3 * player_right.opponent_direction * field_size / 4;
	start_x_ball = start_x_right;
}

var start_y_ball = room_height - room_height / 4;
with (instance_create_layer(start_x_ball, start_y_ball, "Instances", obj_ball)) {
	phy_rotation = random_range(0, 360);
	physics_apply_impulse(start_x_ball, start_y_ball, 0, -1000);
	if (serving_player == 0) {
		last_touch_player_id = player_left.id;
	} else {
		last_touch_player_id = player_right.id;
	}
	touches_left = 1;
}

scr_teleport(
	player_left,
	start_x_left,
	obj_floor.y - player_left.sprite_yoffset
);

scr_teleport(
	player_right,
	start_x_right,
	obj_floor.y - player_right.sprite_yoffset
);

obj_control.display_message = "";

global.game_is_live = true;