/// @description draw collectable bar

var _xx = camera_get_view_x(view_camera[0]);
var _yy = camera_get_view_y(view_camera[0]);

x = _xx + 3;
y = _yy + 29;

draw_rectangle_color(x, y, x + (collected * 4.72), y + 6, c_green, c_green, c_green, c_green, false);




