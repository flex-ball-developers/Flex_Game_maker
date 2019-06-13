/// @description Insert description here
// You can write your code in this editor

//Bomber runs towards the player
if(state == "IDLE")
{
	mp_potential_step(obj_player_2.x,obj_player_2.y,6,obj_wall);



	//Bomber checks if it is colliding with player



	if distance_to_object(obj_player_2) < 20
		{
			//Bomber is colliding with enemy
			//Bomber should explode
		
		
			//Play Exploding animation
			sprite_index = spr_enemy_explode;
			state = "EXPLODE";
			//Instance should be destroyed after animation finishes
			

		}
}


if bombhp <= 0
	{instance_destroy()}