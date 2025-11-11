/// @description got magnet

if ( has_magnet == true)
{
	if (instance_exists(obj_magnet_dispaly_controller))
	{
		instance_destroy(obj_magnet_dispaly_controller);
	}
	has_magnet = false;
}
if (has_drone == true)
{
	if (instance_exists(obj_drone))
	{
		instance_destroy(obj_drone);
	}
	if (instance_exists(obj_drone_siplay_controller))
	{
		instance_destroy(obj_drone_siplay_controller);
	}
	has_drone = false;
}
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
//sets up new magnet
has_magnet = true;
instance_destroy(other);

instance_create_depth(0, 0, 0, obj_magnet_dispaly_controller);





