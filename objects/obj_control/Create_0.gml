global.game_is_live = false;

score_left = 0;
score_right = 0;
serving_player = 0;
player_left = instance_find(obj_player, 0);
player_right = instance_find(obj_player, 1);
display_message = "";

scr_start_round(serving_player, player_left, player_right);