draw_sprite_ext(sprite_index, image_index, toolX, toolY, image_xscale, image_yscale, image_angle, c_white, image_alpha);
if(point_in_circle(mouse_x, mouse_y, x, y, distToUse)) {
	draw_circle(x, y, distToUse, true);
}