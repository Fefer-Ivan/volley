/// @description Draw indicator when ball outside the screen
draw_self();
if (y + sprite_yoffset < 0) {
	draw_sprite_ext(spr_ball, 0, x, 5 + sprite_yoffset, 0.5, 0.5, 0, c_white, 0.75);
}
