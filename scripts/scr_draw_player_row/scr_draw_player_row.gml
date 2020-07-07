//scr_draw_player_row(start_x, start_y, name_width, name_height, player, is_serving);

var start_x = argument0;
var start_y = argument1;
var name_width = argument2;
var name_height = argument3;
var player = argument4;
var is_serving = argument5;

draw_set_color(c_white);
draw_set_halign(fa_top);
draw_set_valign(fa_left);
draw_set_font(fnt_score);

var height = name_height + 10;
var width = 10 + name_width +
	10 + height - 10 +
	10 + string_width("0") +
	10 + string_width("00");
draw_rectangle_color(start_x, start_y, start_x + width, start_y + height, c_red, c_red, c_red, c_red, false);
draw_rectangle_color(start_x, start_y, start_x + width, start_y + height, c_white, c_white, c_white, c_white, true);

draw_text(start_x + 5, start_y + 5, player.name);
start_x += 10 + name_width;
draw_line(start_x, start_y, start_x, start_y + height);

if (is_serving) {
	draw_circle(start_x + 5 + (height - 10) / 2, start_y + 5 + (height - 10) / 2, 5, false);
}

start_x += 10 + height - 10;
draw_line(start_x, start_y, start_x, start_y + height);

draw_text(start_x + 5, start_y + 5, "0");
start_x += 10 + string_width("0");
draw_line(start_x, start_y, start_x, start_y + height);

draw_text(start_x + 5, start_y + 5, string(player.game_score));