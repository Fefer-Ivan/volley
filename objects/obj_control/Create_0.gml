global.game_is_live = false;

serving_player = 0;
players = [instance_find(obj_player, 0), instance_find(obj_player, 1)];
display_message = "";

scr_start_round(serving_player, players);