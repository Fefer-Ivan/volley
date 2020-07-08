/// @arg player_number
var player_number = argument0;

with (obj_control) {
	var game_score = players[player_number].game_score;
	return game_score + 1 >= game_score_to_win && game_score > players[1 - player_number].game_score;
}