/// @description decrease damage by 50

instance_destroy(other);

damage += -50;

if (damage < 0)
{
	damage = 0;
}


