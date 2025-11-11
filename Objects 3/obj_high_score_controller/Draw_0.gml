/// @description show the score

draw_set_color(c_lime);
draw_set_font(fnt_nhs);
draw_set_halign(fa_left);

var _total_seconds = floor(obj_tuning.current_score / 30);
var _minutes = floor(_total_seconds / 60);
var _seconds = floor(_total_seconds mod 60);
var _time_string = "";
if (_seconds < 10)
{
	_time_string =string(_minutes) + ":0" + string(_seconds);
}
else
{
	_time_string = string(_minutes) + ":" + string(_seconds);
}

if (obj_tuning.current_score == obj_tuning.my_highscore)
{
	draw_text(100, 200, string_hash_to_newline("congratulations"));
	draw_text(100, 240, string_hash_to_newline("New High Score"));
	draw_text(200, 280, string_hash_to_newline(_time_string));
}
else
{
	draw_text(135, 200, string_hash_to_newline("your Scored"));
	draw_text(200, 240, string_hash_to_newline(_time_string));
}






