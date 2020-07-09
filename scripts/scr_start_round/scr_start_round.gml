/// @description Start game round
/// @arg serving_player
/// @arg players

var serving_player = argument0;
var players = argument1;

var field_size = 600;

players[0].our_field_left_x = obj_net.x - field_size;
players[0].our_field_right_x = obj_net.x;
players[0].opponent_direction = 1;

players[1].our_field_left_x = obj_net.x;
players[1].our_field_right_x = obj_net.x + field_size;
players[1].opponent_direction = -1;

while (instance_number(obj_ball) > 0) {
	instance_destroy(instance_find(obj_ball, 0));
}

var start_x_player = [];
start_x_player[serving_player] = obj_net.x - 3 * players[serving_player].opponent_direction * field_size / 4;
start_x_player[1 - serving_player] = obj_net.x - players[1 - serving_player].opponent_direction * field_size / 2;
var start_x_ball = start_x_player[serving_player];

var start_y_ball = room_height - room_height / 4;
with (instance_create_layer(start_x_ball, start_y_ball, "Instances", obj_ball)) {	
	physics_apply_impulse(start_x_ball, start_y_ball, 0, -1000);
	//phy_rotation = random_range(0, 360);
	if (serving_player == 0) {
		last_touch_player_id = players[0].id;
	} else {
		last_touch_player_id = players[1].id;
	}
	touches_left = 1;
}

for (var i = 0; i < 2; i += 1) {
	scr_teleport(
		players[i],
		start_x_player[i],
		obj_floor.y - players[i].sprite_yoffset
	);
}

obj_control.display_message = "";

global.game_is_live = true;