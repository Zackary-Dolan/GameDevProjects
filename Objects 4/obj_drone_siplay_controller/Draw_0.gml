/// @description fdraw itself

var _xx = camera_get_view_x(view_camera[0]);
var _yy = camera_get_view_y(view_camera[0]);

x = _xx + 333;
y = _yy + 45;

draw_rectangle_color(_xx + 353, _yy + 48, _xx + 353 + (drone_timer / 2.5), _yy + 56, c_teal, c_teal, c_teal, c_teal, false);
draw_self();
