if (on){
	application_surface_draw_enable(false);
	shader_set(shader);
	draw_surface(application_surface,0,0);
	shader_reset();
}
else application_surface_draw_enable(true);