/// @description Insert description here
// You can write your code in this editor

//Bomber runs towards the player
if(state == "IDLE")
{
	mp_potential_step(obj_player_2.x,obj_player_2.y,6,obj_wall);



	//Bomber checks if it is colliding with player



	if distance_to_object(obj_player_2) < 5
		{
			//Bomber is colliding with enemy
			//Bomber should explode
		
		
			//Play Exploding animation
			sprite_index = spr_enemy_2;
			state = "EXPLODE";
			//Deal 25 damage
			obj_player_2.PlayerLives -= 1;
			//Instance should be destroyed after animation finishes
			

		}
}

if place_meeting(x,y,obj_shoot){
	instance_destroy();
	}
	
