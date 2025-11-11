/// @description Enemt 7

repeat(obj_tuning.enemy8)
{
	instance_create_depth(0, 0, 0, obj_enemy_assess1);
}
alarm_set(0, 30 * obj_tuning.gentime_enemy8+random(120));


