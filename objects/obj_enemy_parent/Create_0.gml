target_x = x;
target_y = y;

alarm[0] = 60;


hp_total = hp;

global.defeated_enemies = ds_list_create();

var enemy_key = string(x)
+ "_"
+ string(y)
+ "_"
+ string(object_index);

if (ds_list_find_index(global.defeated_enemies, enemy_key) != -1)
{
    instance_destroy();
    exit;
}