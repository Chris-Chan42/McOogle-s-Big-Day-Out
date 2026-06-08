draw_sprite_tiled(sprite_index, image_index, 0, 0);
for (var xx = 0; xx < display_get_gui_width(); xx += sprite_width)
{
    for (var yy = 0; yy < display_get_gui_height(); yy += sprite_height)
    {
        draw_sprite(sprite_index, image_index, xx, yy);
    }
}