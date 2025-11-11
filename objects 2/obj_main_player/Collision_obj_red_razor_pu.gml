/// @description pickup the razor really!

if (has_red_razor == true)
{
	if (instance_exists(obj_red_razor1) && instance_exists(obj_red_razor2))
	{
		instance_destroy(obj_red_razor2);
		instance_destroy(obj_red_razor1);
	}
	//stop havin razor
	if (instance_exists(obj_red_razor_display_controller))
	{
		audio_stop_sound(obj_red_razor_display_controller.my_index);
		instance_destroy(obj_red_razor_display_controller);
	}
	has_red_razor = false;
}
if (has_yellow_razor == true)
{
	if (instance_exists(obj_assess_yellow_razor1) && instance_exists(obj_assess_yellow_razor2) && (obj_assess_yellow_razor3) && instance_exists(obj_assess_yellow_razor4))
	{
		instance_destroy(obj_assess_yellow_razor1);
		instance_destroy(obj_assess_yellow_razor2);
		instance_destroy(obj_assess_yellow_razor3);
		instance_destroy(obj_assess_yellow_razor4);
	}
	//stop havin razor
	if (instance_exists(obj_yellow_razor_display_controller))
	{
		audio_stop_sound(obj_yellow_razor_display_controller.my_index);
		instance_destroy(obj_yellow_razor_display_controller);
	}
	has_yellow_razor = false;
}

has_red_razor = true;

instance_destroy(other);
instance_create_depth(0, 0, 0, obj_red_razor_display_controller);
instance_create_depth(x, y, 0, obj_red_razor1);
instance_create_depth(x, y, 0 ,obj_red_razor2);


