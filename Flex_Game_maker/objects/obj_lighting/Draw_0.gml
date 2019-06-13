gpu_set_blendmode(bm_subtract);
draw_surface(light, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]));
gpu_set_blendmode(bm_normal);