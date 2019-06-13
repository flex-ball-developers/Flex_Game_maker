globalvar light;

view_wview = camera_get_view_width(view_camera[0]);
view_hview = camera_get_view_height(view_camera[0]);

light = surface_create(view_wview, view_hview);