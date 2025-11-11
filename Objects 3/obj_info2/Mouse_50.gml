/// @description check if pressed

var _my_x = mouse_x;
var _my_y = mouse_y;

//openh game arena
if _my_x >= 180 && _my_x <= 310 && _my_y >= 530 && _my_y <= 595
{
	//allowed to press the button
	if(can_press > 0)
	{
		// dont allow
		can_press = -90;
		room_goto(rm_info3);
	}
}




