/// @description Insert description here
// You can write your code in this editor

//Bomber runs towards the player
if(state == "IDLE")
{
mp_potential_step(obj_player_2.x,obj_player_2.y,6,obj_wall);
}


//Bomber checks if it is colliding with player


if(state == "IDLE")
{
if distance_to_object(obj_player_2) < 20
	{
		//Bomber is colliding with enemy
		//Bomber should explode
		//1 - Deal 25 damage
		obj_player_2.PlayerHealth -= 25;
		//2 - Play Exploding animation
		sprite_index = spr_enemy_2;
		state = "EXPLODE";
		//Instance should be destroyed after animation finishes
			

	}
}
