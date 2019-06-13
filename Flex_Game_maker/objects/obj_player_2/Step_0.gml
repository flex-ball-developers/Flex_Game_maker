//gravity//
if !place_meeting(x,y+1,obj_wall){
	vy+=grav;
	if vy>=12
	{vy=12}
	}
if(PlayerLives >0)
{
//Jumping
if keyboard_check_pressed(vk_up)
{
	if place_meeting(x,y+1,obj_wall)
	{
	vy-=10; 
	doublejump=true;
	}
	else if doublejump and stance == 0 {
	vy=-10;
	doublejump=false;
	}
}


if keyboard_check_pressed(vk_escape)
{
	room_goto(room_gamestart)	;
}

//STANCE

if stance>1 stance=0;

//y movement//
if !place_meeting(x,y+vy,obj_wall)
	y+=vy;
else{
	while !place_meeting(x,y+sign(vy),obj_wall)
	y+=sign(vy)
	vy=0;
}


dash+=0.01;
if dash > 0.5 {dash = 0.5;}

if state == "MOVE" 
{
	#region MOVE
	if keyboard_check(vk_left) and !place_meeting(x-movespeed,y,obj_wall)
	{
		x -= movespeed;
		image_xscale = -1;
		sprite_index = spr_player_move;
	}

	if keyboard_check(vk_right) and !place_meeting(x+movespeed,y,obj_wall)
	{
		x += movespeed;
		image_xscale = 1;
		sprite_index = spr_player_move;
	}

	if not keyboard_check(vk_right) and not keyboard_check(vk_left)
	{
		sprite_index = spr_player_idle;
		image_speed=1
	}
	if keyboard_check_pressed(vk_space) and stance == 0 and dash == 0.5
	{
		image_index=0 //resets the frame//
		state = "DASH";
		dash-=0.5;
	
	}
	if keyboard_check_pressed(vk_space) and stance == 1
	{
		image_index=0
		state = "ATTACK";
		shoot=instance_create_layer(x,y-32,"Instances",obj_shoot)
		if(keyboard_check(vk_down))
		{
			shoot.direction = 90;
			shoot.speed=20*image_yscale;
			shoot.image_angle = 90;
			
		}
		else
		{
			shoot.direction = 0;
			shoot.speed=20*image_xscale;
			shoot.image_angle = 0;
			shoot.image_xscale=image_xscale;
		}
		
	}
	
	if keyboard_check_pressed(ord("Z")) and stance == 1
	{
		image_index=0
		state = "SPEED";
		stance+=1;
	}
	
	if keyboard_check_pressed(ord("Z")) and stance == 0
	{
		image_index=0
		state = "POWER";
		stance+=1;
	}

	#endregion
}

//Dash//
if state == "DASH"
{
	#region DASH
	sprite_index = spr_player_dash;
	image_speed = 1;
	
	if image_xscale == 1 and not place_meeting(x+movespeed, y, obj_wall)
	{
		x += movespeed*2;
	}
	
	if image_xscale == -1 and not place_meeting(x-movespeed, y, obj_wall)
	{
		x -= movespeed*2;
	}
	
	#endregion
}

//ATTACK//
if state == "ATTACK"
{
	#region ATTACK
	sprite_index = spr_player_attack;
	image_speed = 1;
	
	#endregion
}

//POWER//
if state == "POWER"
{
	sprite_index = spr_player_power;
}

//SPEED//
if state == "SPEED"
{
	sprite_index = spr_player_speed;
}

}
else
{
	//Player is dead send back to earliest non tutorial or reset the level in tutorial
	if(FinishedTutorial)
	{
		//First non tutorial level
		PlayerLives = 5;
		room_goto(room_level2);
	}
	else
	{
		//Restart tutorial level
		PlayerLives = 5;
		room_restart();
	}
}

if keyboard_check(ord("R"))
	{
	room_restart()
	}	
	