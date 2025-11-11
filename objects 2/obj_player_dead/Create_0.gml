/// @description  save data kill player

obj_tuning.current_score = obj_timer_controller.my_timer;

if(obj_timer_controller.my_timer > obj_tuning.my_highscore)
{
	ini_open("savedata.ini");
	ini_write_real("save1", "high", obj_timer_controller.my_timer);
	obj_tuning.my_highscore = obj_timer_controller.my_timer;
	ini_close();
}

alarm_set(0, 60);
instance_create_depth(0, 0, 0, obj_you_died);




