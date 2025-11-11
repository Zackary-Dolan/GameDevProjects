/// @description alarm setting


repeat(obj_tuning.enemy1)
{
	instance_create_depth(0, 0, 0, obj_enemy1);
}
alarm_set(0, 30 * obj_tuning.gentime_enemy1);





