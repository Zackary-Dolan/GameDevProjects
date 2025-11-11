/// @description variables

damage = 0;
change_direction = 0;
can_attack = 0;
razor_can_hurt = 0;

//create enemy on screen
direction = random(360);

// spawn enemy within 200+ pixels of the player character
spawn_radius = 200+random(100);

// choose a random angel between 0 and 360 degrees
var _angle = irandom(360);

//based on angle and spawn radiius calculate an x and y
//coordinate for the enemy to be generated at.
x = obj_parent_player.x + lengthdir_x(spawn_radius, _angle);
y = obj_parent_player.y + lengthdir_y(spawn_radius, _angle);