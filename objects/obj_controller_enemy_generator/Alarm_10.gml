repeat(obj_tuning.enemy10)
{
	instance_create_depth(0, 0, 0, obj_enemy_assess3);
}
alarm_set(0, 30 * obj_tuning.gentime_enemy10+random(120));

