gpu_set_blendmode(bm_subtract);

surface_set_target(light);

draw_ellipse_color(	x - 128 / 2 - camera_get_view_x(view_camera[0]),
					y - 128 / 2 - camera_get_view_y(view_camera[0]),
					x+128/2-camera_get_view_x(view_camera[0]),
					y+128/2-camera_get_view_y(view_camera[0]),
					c_white,c_black,false);

surface_reset_target();

gpu_set_blendmode(bm_normal);
