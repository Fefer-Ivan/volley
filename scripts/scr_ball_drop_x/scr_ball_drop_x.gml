//scr_ball_drop_x(ball, target_y);

var ball = argument0;
var target_y = argument1;

var vx = ball.phy_speed_x;
var vy = ball.phy_speed_y;

var g = 0.138888888;
var t = scr_quadratic_equation(g / 2, vy, ball.phy_position_y - target_y);
return ball.phy_position_x + vx * t;