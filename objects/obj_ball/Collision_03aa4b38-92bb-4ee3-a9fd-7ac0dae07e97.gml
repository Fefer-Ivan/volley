if (global.game_is_live) {
	for (var i = 0; i < instance_number(obj_player); i += 1) {
		var player = instance_find(obj_player, i);
	
		if (player.our_field_left_x <= x && x <= player.our_field_right_x) {
			scr_finish_round("goal", 1 - i);
			return;
		}
	}
	var scoring_player = 0;
	if (last_touch_player_id == obj_control.player_left.id) {
		scoring_player = 1;
	}
	scr_finish_round("out", scoring_player);	
}