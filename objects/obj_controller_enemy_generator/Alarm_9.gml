/// @description Enemt 7

repeat(obj_tuning.enemy9)
{
	instance_create_depth(0, 0, 0, obj_enemy_assess2);
}
alarm_set(0, 30 * obj_tuning.gentime_enemy9+random(120));


