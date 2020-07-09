game_score = 0;
set_score = 0;
set_point_count = 0;
match_point_count = 0;
special_point_message = "";

run_direction = 0;
jumping = false;
strike_boost = false;

fixtures = [];
density = 4;
var restitution = 0.1;
var linear_damping = 0.5;
var fix_friction = 0.3;

var head = physics_fixture_create();
physics_fixture_set_circle_shape(head, sprite_width / 2);
physics_fixture_set_density(head, density);
physics_fixture_set_restitution(head, restitution);
physics_fixture_set_linear_damping(head, linear_damping);
physics_fixture_set_friction(head, fix_friction);
fixtures[0] = physics_fixture_bind_ext(head, id, 0, sprite_height / 2 - sprite_width / 2);
physics_fixture_delete(head);

var body = physics_fixture_create();
physics_fixture_set_polygon_shape(body);
physics_fixture_add_point(body, -sprite_width / 2, 0);
physics_fixture_add_point(body, sprite_width / 2, 0);
physics_fixture_add_point(body, sprite_width / 2, sprite_height - sprite_width / 2);
physics_fixture_add_point(body, -sprite_width / 2, sprite_height - sprite_width / 2);
physics_fixture_set_density(body, density);
physics_fixture_set_restitution(body, restitution);
physics_fixture_set_linear_damping(body, linear_damping);
physics_fixture_set_friction(body, fix_friction);
fixtures[1] = physics_fixture_bind(body, id);
physics_fixture_delete(body);

phy_fixed_rotation = true;

our_field_left_x = 0;
our_field_right_x = 0;
opponent_direction = 0;