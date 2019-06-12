image_speed=0

if number>= 2
	{number=0}

if number=0
{
	image_index=0;
}

if number=1
{
	image_index=1;
}

if keyboard_check_pressed(vk_left) or keyboard_check_pressed(vk_right)
{
	number+=1;
}



if number=0 and keyboard_check(vk_space) or number=0 and keyboard_check(vk_enter)

	{
	room_goto_next()
	instance_create_depth(0,0,-9999,obj_fade);
	}
if number=1 and keyboard_check(vk_space) or number=1 and keyboard_check(vk_enter)

	{
	game_end()
	instance_create_depth(0,0,-9999,obj_fade);
	}