//scr_finish_round(message, scoring_player)

var message = argument0;
var scoring_player = argument1;

global.game_is_live = false;
with (obj_control) {
	serving_player = scoring_player;
	players[serving_player].game_score += 1;
	display_message = message;
	alarm_set(0, 120);	
}