/// @arg message
/// @arg scoring_player

var message = argument0;
var scoring_player = argument1;

global.game_is_live = false;
with (obj_control) {
	serving_player = scoring_player;
	if (scr_is_set_point(serving_player)) {
		players[serving_player].set_score += 1;
		for (var i = 0; i < 2; ++i) {
			players[i].game_score = 0;
			players[i].set_point_count = 0;
		}
	} else {
		players[serving_player].game_score += 1;
	}
	
	for (var i = 0; i < 2; i += 1) {
		if (scr_is_set_point(i)) {
			if (players[i].set_score + 1 >= obj_control.set_score_to_win) {
				players[i].match_point_count += 1;
				players[i].special_point_message = scr_get_special_point_message("Match point", players[i].match_point_count);
			} else {
				players[i].set_point_count += 1;
				players[i].special_point_message = scr_get_special_point_message("Set point", players[i].set_point_count);			
			}
		} else {
			players[i].special_point_message = "";
		}
	}
	
	display_message = message;
	alarm_set(0, 120);	
}