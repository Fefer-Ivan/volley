/// @description Draw fields and out
draw_sprite_ext(spr_floor, 0, x, y, image_xscale, 1, 0, c_red, 1);

for (var i = 0; i < instance_number(obj_player); ++i) {
	var player = instance_find(obj_player, i);
	var field_x = (player.our_field_left_x + player.our_field_right_x) / 2;
	var field_size = player.our_field_right_x - player.our_field_left_x;	
	draw_sprite_ext(spr_floor, 0, field_x, y, field_size / sprite_get_width(spr_floor), 1, 0, c_black, 1);
}