/// @description Setup camera

var camera = view_get_camera(view_current);

var height_to_width = view_get_wport(view_current) / view_get_hport(view_current);

var camera_min_width = 1280;
var camera_max_width = room_width;
var camera_min_height = camera_min_width / height_to_width;
var camera_max_height = camera_max_width / height_to_width;

var origin_x = obj_net.x;
var origin_y = obj_floor.y;

var camera_height = camera_min_height;
var camera_width = camera_min_width;

for (var i = 0; i < instance_number(obj_player); ++i) {
	var player = instance_find(obj_player, i);
	camera_width = max(camera_width, 2 * abs(player.x  - origin_x) + player.sprite_xoffset * 5);
}

for (var i = 0; i < instance_number(obj_ball); ++i) {
	var ball = instance_find(obj_ball, i);
	camera_height = max(camera_height, abs(origin_y - ball.y) + ball.sprite_yoffset * 5);
	camera_width = max(camera_width, 2 * abs(ball.x  - origin_x) + ball.sprite_xoffset * 5);
}

camera_height = min(camera_height, camera_max_height);
camera_width = min(camera_width, camera_max_width);

camera_width = max(camera_width, camera_height * height_to_width);
var scale = min(
	1.0,
	scale_multiplier * (camera_width - camera_min_width) / (camera_max_width - camera_min_width)
);

var prev_scale = (camera_get_view_width(camera) - camera_min_width) / (camera_max_width - camera_min_width);
if (scale == prev_scale) {
	return;
}

if (scale < prev_scale) {
	scale = prev_scale - min(prev_scale - scale, max_scale_decrement);
}

camera_width = camera_min_width + scale * (camera_max_width - camera_min_width);
camera_height = camera_width / height_to_width;
camera_set_view_size(camera, camera_width, camera_height);
camera_set_view_pos(camera, origin_x - camera_width / 2, origin_y - camera_height);