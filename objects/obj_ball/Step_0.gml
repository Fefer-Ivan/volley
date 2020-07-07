if (global.game_is_live && (x + sprite_xoffset < 0 || x - sprite_xoffset >= room_width)) {
	var scoring_player = 0;
	if (last_touch_player_id == obj_control.players[0].id) {
		scoring_player = 1;
	}
	scr_finish_round("out", scoring_player);
}