/// @description Enemy 5

repeat(obj_tuning.enemy5)
{
	instance_create_depth(0, 0, 0, obj_enemy5);
}
alarm_set(0, 30 * obj_tuning.gentime_enemy5+random(120));









