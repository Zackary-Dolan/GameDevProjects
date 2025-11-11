/// @description Enemt 7

repeat(obj_tuning.enemy7)
{
	instance_create_depth(0, 0, 0, obj_enemy7);
}
alarm_set(0, 30 * obj_tuning.gentime_enemy7+random(120));


