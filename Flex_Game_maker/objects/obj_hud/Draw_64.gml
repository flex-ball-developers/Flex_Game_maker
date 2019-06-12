draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(font_default)
draw_set_color(c_red)
draw_text(8,56,"STANCE: "+string(obj_player_2.stance));
//Jacob's addition
draw_text(8,75,"HEALTH: ");//+string(obj_player_2.PlayerLives));

if(obj_player_2.PlayerLives > 0)
{
	draw_rectangle_color(78, 75, 78 + 30, 75 + 16, c_white,c_white,c_white,c_white, false);
}

if(obj_player_2.PlayerLives > 1)
{
	draw_rectangle_color(118, 75, 118 + 30, 75 + 16, c_white,c_white,c_white,c_white, false);
}

if(obj_player_2.PlayerLives > 2)
{
	draw_rectangle_color(158, 75, 158 + 30, 75 + 16, c_white,c_white,c_white,c_white, false);
}

var dash_x =8
var dash_y =8
var dash_width = 198;
var dash_height = 16;
var dash_percent = obj_player_2.dash / obj_player_2.maxdash

draw_rectangle_color(dash_x, dash_y,dash_x + (dash_width*dash_percent), dash_y + dash_height, c_white,c_white,c_white,c_white, false);