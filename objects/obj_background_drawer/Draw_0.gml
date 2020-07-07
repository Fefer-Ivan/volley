/// @description Draw background
if (surface_exists(background_surface)) {
	draw_surface(background_surface, 0, 0);
	return;
}

background_surface = surface_create(room_width, room_height);
surface_set_target(background_surface);
draw_clear(c_aqua);

var sprite_coordinates = [
	[100, 300, 500, 700, 900, 1100, 1300, 1500, 1700, 1900],
	[200, 600, 1000, 1400, 1600, 2000]
];

var sprites = [
	spr_background_1,
	spr_background_2
];

for (var i = array_length_1d(sprite_coordinates) - 1; i >= 0; i -= 1) {
	for (var j = 0; j < array_length_1d(sprite_coordinates[i]); j += 1) {
		draw_sprite(sprites[i], 0, array_get(sprite_coordinates[i], j), room_height);
	}
}

surface_reset_target();