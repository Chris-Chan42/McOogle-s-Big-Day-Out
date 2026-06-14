draw_set_font(global.font_main);
draw_set_colour(c_black);

var box_x = 5;
var box_y = room_height - 128;
var line_y = box_y + 20;

// Shop title
draw_text(box_x + 10, line_y + 22, "ZEEMART");

line_y += 30;

// Money
draw_text(
    box_x + 60,
    line_y -8,
    "Money: $" + string(global.money)
);

line_y += 15;

// Shop items
for (var i = 0; i < array_length(shop_items); i++)
{
    var item = shop_items[i];

    // Highlight selected item
    if i == shop_selected
    {
        draw_set_colour(c_yellow);
        draw_text(box_x + 5, line_y, "> " + item.name + " - $" + string(item.price));
    }
    else
    {
        draw_set_colour(c_black);
        draw_text(box_x + 20, line_y, item.name + " - $" + string(item.price));
    }

    line_y += 15;
}

// Controls at bottom of white box
draw_set_colour(c_black);

draw_text(
    box_x + 155,
    room_height - 15,
    "SPACE = Buy   ESC = Leave"
);