global.game_is_live = false;

serving_player = 0;

game_score_to_win = 25;
set_score_to_win = 3;

players = global.players;
for (var i = 0; i < array_length_1d(players); ++i) {
	var gamepad_id = global.players_gamepad_id[i];
	if (gamepad_id != -1) {
		players[i].gamepad_device_id = gamepad_id;		
		players[i].control = control_type.gamepad;
	}
}
display_message = "";

scr_start_round(serving_player, players);