var item_diff = 0;
if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
	item_diff = 1;
}

if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
	item_diff = -1;
}

for (var i = 0; i < gamepad_get_device_count(); ++i) {
	if (!gamepad_is_connected(i)) {
		continue;
	}
	
	if (gamepad_button_check_pressed(i, gp_padd)) {
		item_diff = 1;
	}	
	if (gamepad_button_check_pressed(i, gp_padu)) {
		item_diff = -1;
	}
}

selected_item = (selected_item + item_diff + array_length_1d(items)) % array_length_1d(items);

if (item_diff == 0) {
	var action = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter);
	var gamepad_id = -1;
	if (!action) {
		for (var i = 0; i < gamepad_get_device_count(); ++i) {
			if (gamepad_is_connected(i) && gamepad_button_check_pressed(i, gp_face1)) {
				gamepad_id = i;
				action = true;
				break;
			}
		}
	}
	
	if (action) {
		if (selected_item == 0) {
			var new_game_room = room_duplicate(rm_game);
			global.players[0] = room_instance_add(new_game_room, 0, 0, obj_controlled_player);
			if (gamepad_id == -1) {
				global.players_gamepad_id[0] = gamepad_id;
			}
			global.players[1]= room_instance_add(new_game_room, 0, 0, obj_ai_player);
			global.players_gamepad_id[1] = -1;
			room_instance_add(new_game_room, 0, 0, obj_control);
			room_goto(new_game_room)
		} else if (selected_item == 2) {
			game_end()
		}
	}
}