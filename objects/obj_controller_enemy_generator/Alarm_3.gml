/// @description Enem y4

repeat(obj_tuning.enemy4)
{
	instance_create_depth(0, 0, 0, obj_enemy4);
}
alarm_set(0, 30 * obj_tuning.gentime_enemy4+random(120));




