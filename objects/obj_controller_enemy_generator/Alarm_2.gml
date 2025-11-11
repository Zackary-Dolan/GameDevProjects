/// @description Enemy 3

repeat(obj_tuning.enemy3)
{
	instance_create_depth(0, 0, 0, obj_enemy3);
}
alarm_set(0, 30 * obj_tuning.gentime_enemy3+random(120));

