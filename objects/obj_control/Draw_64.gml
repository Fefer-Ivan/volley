/// @description Draw score and message

var width = window_get_width();
var height = window_get_height();

draw_set_font(fnt_score);
var name_width = max(string_width(player_left.name), string_width(player_right.name));
var name_height = max(string_height(player_left.name), string_height(player_right.name));
scr_draw_player_row(width / 16, height / 16, name_width, name_height, player_left, serving_player == 0);
scr_draw_player_row(width / 16, height / 16 + name_height + 10, name_width, name_height, player_right, serving_player == 1);

draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_message);
draw_text(width / 2, height / 2, display_message);

if (instance_number(obj_ball) > 0) {
	draw_set_font(fnt_score);
	scr_draw_touches(width / 16, height / 16 + 3 * (name_height + 10), obj_ball.touches_left, string_width("0"));
}