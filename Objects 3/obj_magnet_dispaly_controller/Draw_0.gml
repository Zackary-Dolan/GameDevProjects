/// @description draw timer bar

var _xx = camera_get_view_x(view_camera[0]);
var _yy = camera_get_view_y(view_camera[0]);

x = _xx + 1;
y = _yy + 1;

draw_rectangle_color(_xx + 18, _yy + 15, _xx + 18 + (magnet_timer / 2), _yy + 20, c_purple, c_purple, c_purple, c_purple, false);
draw_self();


