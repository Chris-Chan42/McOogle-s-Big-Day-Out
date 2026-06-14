/// Enemy died
if (obj_battle_enemy.data.hp <= 0)
{
    // Give XP
    obj_McOogle.add_xp(obj_battle_enemy.data.xp_value);

    // Quest check
    if (obj_battle_enemy.data.object_index == obj_peebs
    && obj_battle_switcher.original_room == rm_Basement)
    {
        if (instance_number(obj_peebs) <= 1)
        {
            global.peebs_defeated = true;
        }
    }

    // Destroy overworld enemy
    if (instance_exists(obj_battle_switcher.enemy_data))
    {
        with (obj_battle_switcher.enemy_data)
        {
            instance_destroy();
        }
    }
}

// Return to overworld
room_goto(obj_battle_switcher.original_room);