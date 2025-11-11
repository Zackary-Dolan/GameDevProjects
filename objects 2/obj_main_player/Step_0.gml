/// @description Select correct sprite and other stuff
x+=obj_joystick.x_stick * spd;
y+=obj_joystick.y_stick * spd;

//find the camera, using it get the width and height 
// set the camera position ralative to the player
var _cam = view_get_camera(0);
var _res_w = camera_get_view_width(_cam) / 2;
var _res_h = camera_get_view_height(_cam) / 2;
camera_set_view_pos(_cam, x - _res_w, y - _res_h);

var _move_direction = joystick_direction();

//should we stop the player moving
if (abs(obj_joystick.x_stick) <= 0.001 && abs(obj_joystick.y_stick) <= 0.001)	
{
	sprite_index = spr_player_standing;
	speed = 0;
}
else if(_move_direction <= 70 || _move_direction >= 290)
{
	sprite_index = spr_player_right;
}
else if (_move_direction > 70 && _move_direction < 110)
{
	sprite_index = spr_player_up;
}
else if (_move_direction >= 110 && _move_direction <= 250)
{
	sprite_index = spr_player_left;
}
else
{
	sprite_index = spr_player_down;
}

image_speed = .33;

event_inherited();

can_shoot_weapon1++;

if (!start_timer)
{
	if (can_shoot_weapon1 >= 0 && bullets > 0)
	{
		if(weapon_selected == 0)
		{
			instance_create_depth(x, y, -10, obj_single_bullet);
			audio_play_sound(snd_gun_shot, 100, false);
			can_shoot_weapon1 = -15;
			bullets--;
			if (bullets == 0)
			{
				start_timer = true;
				timer_counter = 0;
			}
		}
		//shotgun selected	
		if (weapon_selected == 1)
		{
			var _pellet_angles = [-8, 0, 8];
	
			for (var _i = 0; _i < array_length(_pellet_angles); _i++)
			{
				//final angle for bullets
				var _angle = _move_direction + _pellet_angles[_i];
				//create new pellets
				var _pellet = instance_create_depth(x, y, -10, obj_shotgun_pellet);
				_pellet.direction = _angle;
				_pellet.speed = 16;
			}
			audio_play_sound(snd_shotgun, 80, false);
			can_shoot_weapon1 = -15;
			bullets--;
			secondary_weapon--;
			//out of ammo
			if (secondary_weapon == 0)
			{
				weapon_selected = 0;
			}
			if (bullets == 0)
			{
				start_timer = true;
				timer_counter = 0;
			}
		}
		//laser eslected
		if (weapon_selected = 2)
		{
			var _laser_shot = instance_create_depth(x, y, -1, obj_laser_blast);
			_laser_shot.direction = _move_direction;
			_laser_shot.speed = 16;
			audio_play_sound(snd_laser, 80, false);
			can_shoot_weapon1 = -15;
			bullets--;
			secondary_weapon--;
			// out ofd laser
			if (secondary_weapon == 0)
			{
			weapon_selected = 0;
			}
			if (bullets == 0)
			{
				start_timer = true;
				timer_counter = 0;
			}
		}
	}
}
else
{
	if (timer_counter >= 40)
	{
		bullets = 5;
		start_timer = false;
	}
}

if instance_exists(obj_red_razor1) && instance_exists(obj_red_razor2)
{
	var _angle_offset = 180;
	
	obj_red_razor1.x = x + obj_tuning.current_razor_distance * cos(degtorad(razor_angle));
	obj_red_razor1.y = y + obj_tuning.current_razor_distance * sin(degtorad(razor_angle));
	
	obj_red_razor2.x = x + obj_tuning.current_razor_distance * cos(degtorad(razor_angle + _angle_offset));
	obj_red_razor2.y = y + obj_tuning.current_razor_distance * sin(degtorad(razor_angle + _angle_offset));
	
	razor_angle -=  obj_tuning.razor_speed;
}

if instance_exists(obj_drone)
{
	obj_drone.x = x + obj_tuning.drone_distance * cos(degtorad(-45));
	obj_drone.y = y + obj_tuning.drone_distance * sin(degtorad(-45));
	
	if (abs(obj_joystick.x_stick) <= 0.001 && abs(obj_joystick.y_stick) <= 0.001)
	{
		obj_drone.sprite_index = spr_drone_right;
	}
	else if (_move_direction >= 90 && _move_direction <=270)
	{
		obj_drone.sprite_index = spr_drone_eft;
	}
	else
	{
		obj_drone.sprite_index = spr_drone_right;
	}
}
	
if instance_exists(obj_assess_yellow_razor1) && instance_exists(obj_assess_yellow_razor2) && instance_exists(obj_assess_yellow_razor3) && instance_exists(obj_assess_yellow_razor4)
{
	var _angle_offset = 180;
		
	if( obj_tuning.moving_towards_player)
	{
		obj_tuning.current_razor_distance--;
		if (obj_tuning.current_razor_distance <= obj_tuning.min_razor_distance)
		{
			obj_tuning.moving_towards_player = false;
		}
	}
	else
	{
		obj_tuning.current_razor_distance++;
		if (obj_tuning.current_razor_distance >= obj_tuning.max_razor_distance)
		{
			obj_tuning.moving_towards_player = true;	
		}
	}
	obj_assess_yellow_razor1.x = x + obj_tuning.current_razor_distance * cos(degtorad(razor_angle));
	obj_assess_yellow_razor1.y = y + obj_tuning.current_razor_distance * sin(degtorad(razor_angle));
	
	obj_assess_yellow_razor2.x = x + obj_tuning.current_razor_distance * cos(degtorad(razor_angle + _angle_offset));
	obj_assess_yellow_razor2.y = y + obj_tuning.current_razor_distance * sin(degtorad(razor_angle + _angle_offset));
	
	obj_assess_yellow_razor3.x = x + obj_tuning.current_razor_distance * cos(degtorad(razor_angle + 90));
	obj_assess_yellow_razor3.y = y + obj_tuning.current_razor_distance * sin(degtorad(razor_angle + 90));
	
	obj_assess_yellow_razor4.x = x + obj_tuning.current_razor_distance * cos(degtorad(razor_angle + 270));
	obj_assess_yellow_razor4.y = y + obj_tuning.current_razor_distance * sin(degtorad(razor_angle + 270));
	
	razor_angle -=  obj_tuning.razor_speed;
	
}	
	
	
	
	
	
	
	
	
	
	
	
	

	
	
		
	