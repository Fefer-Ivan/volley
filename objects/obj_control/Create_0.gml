global.game_is_live = false;

serving_player = 0;

game_score_to_win = 25;
set_score_to_win = 3;

players = [instance_find(obj_player, 0), instance_find(obj_player, 1)];
display_message = "";

scr_start_round(serving_player, players);