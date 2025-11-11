/// @description Enemt6

repeat(obj_tuning.enemy6)
{
	instance_create_depth(0, 0, 0, obj_enemy6);
}
alarm_set(0, 30 * obj_tuning.gentime_enemy6+random(120));







