draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(font_default)
draw_set_color(c_red)
draw_text(8,56,"STANCE: "+string(obj_player_2.stance));

var dash_x =8
var dash_y =8
var dash_width = 198;
var dash_height = 16;
var dash_percent = obj_player_2.dash / obj_player_2.maxdash

draw_rectangle_color(dash_x, dash_y,dash_x + (dash_width*dash_percent), dash_y + dash_height, c_white,c_white,c_white,c_white, false);