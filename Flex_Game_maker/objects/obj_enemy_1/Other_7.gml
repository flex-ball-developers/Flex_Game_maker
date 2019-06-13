/// @description Insert description here
// You can write your code in this editor
if(state == "EXPLODE")
{
	
		//- Delete Instance
		instance_destroy(id, true);
		repeat(30) instance_create_layer(x,y,"Instances",obj_puff)
		if collision_circle(x,y,128,obj_player_2,false,true)
	{

		PlayerLives-=1;
	}
}