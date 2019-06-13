/// @description Insert description here
// You can write your code in this editor
if(state == "EXPLODE")
{
	//3a? - Create a new instance somewhere else on the map?
		//3b - Delete Instance
		instance_destroy(id, true);
		repeat(30) instance_create_layer(x,y,"Instances",obj_puff)
		if collision_circle(x,y,128,obj_player_2,false,true)
	{

		obj_player_2.PlayerLives-=1;
	}
}