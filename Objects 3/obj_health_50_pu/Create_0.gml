/// @description create the 50%

direction = random(360);

//spawn health within 300+(0-100)pixels of the main character
spawn_radius = 300+random(100);

//choose a random angle
var _angle = irandom(360);
x = obj_parent_player.x + lengthdir_x(spawn_radius, _angle);
y = obj_parent_player.y + lengthdir_x(spawn_radius, _angle);



