var width = window_get_width();
var height = window_get_height();

var start_x = width/ 10;
var start_y = height / 10;
var diff_y = 2 * height / 10;

var line_width = height / 100;

draw_set_color(c_white);
draw_set_font(fnt_menu);
for (var i = 0; i < array_length_1d(items); ++i) {
	if (i == selected_item) {
		draw_rectangle(start_x - 2*line_width, start_y, start_x - line_width, start_y + string_height(items[i]), false);
	}
	draw_text(start_x, start_y, items[i]);
	start_y += diff_y;
}