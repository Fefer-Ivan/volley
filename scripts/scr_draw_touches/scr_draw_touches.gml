//scr_draw_touches(draw_x, draw_y, touches, w)

var draw_x = argument0;
var draw_y = argument1;
var touches = argument2;
var w = argument3;

repeat(touches) {
	draw_sprite_stretched(spr_ball, 0, draw_x, draw_y, w, w);	
	draw_x += w + 10;
}