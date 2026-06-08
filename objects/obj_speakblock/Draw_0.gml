draw_self();

// Show spacebar prompt when player is nearby
if distance_to_object(obj_McOogle) < 20
{
    draw_sprite(
        spr_spacebar,
        0,
        x - 6,
        y - 25
    );
}