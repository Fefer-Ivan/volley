//scr_update_touches(ball, player_id);
var ball = argument0;
var player_id = argument1;

if (!global.game_is_live) {
	return;
}

if (ball.last_touch_player_id == player_id) {
	ball.touches_left -= 1;
	if (ball.touches_left < 0) {
		var scoring_player = 0;
		if (ball.last_touch_player_id == obj_control.players[0].id) {
			scoring_player = 1;
		}
		scr_finish_round("fault", scoring_player);
	}
} else {
	ball.last_touch_player_id = player_id;
	ball.touches_left = 2;
}