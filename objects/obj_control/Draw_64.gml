/// @description Draw score and message

var width = window_get_width();
var height = window_get_height();

draw_set_font(fnt_score);
var name_width = max(string_width(players[0].name), string_width(players[1].name));
var name_height = max(string_height(players[0].name), string_height(players[1].name));
for (var i = 0; i < 2; ++i) {
	scr_draw_player_row(
		width / 16,
		height / 16 + i * (name_height + 10),
		name_width,
		name_height,
		players[i],
		serving_player == i
	);
}

for (var i = 0; i < 2; ++i) {
	if (string_length(players[i].special_point_message) > 0) {
		var message_x = width / 16;
		var message_y = height / 16 + i * (name_height + 10);
		if (i == 0) {
			message_y -= name_height + 10;
		} else {
			message_y += name_height + 10;
		}
		var message_width = string_width(players[i].special_point_message);
		
		draw_rectangle_color(message_x, message_y, message_x + message_width + 10, message_y + name_height + 10, c_red, c_red, c_red, c_red, false);
		draw_rectangle_color(message_x, message_y, message_x + message_width + 10, message_y + name_height + 10, c_white, c_white, c_white, c_white, true);
		draw_text(message_x + 5, message_y + 5, players[i].special_point_message);
	}
}

if (instance_number(obj_ball) > 0) {
	scr_draw_touches(width / 16, height / 16 + 3 * (name_height + 10), obj_ball.touches_left, string_width("0"));
}

draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_message);
draw_text(width / 2, height / 2, display_message);
