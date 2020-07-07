if (global.game_is_live) {
	var out_scoring_player;
	for (var i = 0; i < array_length_1d(obj_control.players); i += 1) {
		var player = obj_control.players[i];	
		if (player.our_field_left_x <= x && x <= player.our_field_right_x) {
			scr_finish_round("goal", 1 - i);
			return;
		}
		if (last_touch_player_id == player.id) {
			out_scoring_player = 1 - i;
		}
	}

	scr_finish_round("out", out_scoring_player);	
}