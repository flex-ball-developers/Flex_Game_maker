/// @description Insert description here
// You can write your code in this editor
image_speed=1;

canshoot += 1;
if(canshoot > 30)
{
canshoot = 30;	
}


if canshoot >= 30 and distance_to_object(obj_player_2) < 500
{
	state = "ATTACK"
	turret_fire = instance_create_layer(x,y-32,"Instances",obj_enemy_bullet)
	turret_fire.speed=6
	turret_fire.direction=point_direction(x,y-32,obj_player_2.x,obj_player_2.y)
	canshoot -= 30;
}

