if distance_to_object(obj_McOogle) < 20
{
    if !instance_exists(obj_Textbox)
    {
        if position_meeting(x, y, id)
        && keyboard_check_pressed(vk_space)
        {
            var _dialog = text_id;

            // Package hand-in
            if (text_id == "The Master")
            {
                var _manager = instance_find(obj_item_manager, 0);

                if (instance_exists(_manager))
                {
                    for (var i = 0; i < array_length(_manager.inv); i++)
                    {
                        if (_manager.inv[i] == global.item_list.package)
                        {
                            _dialog = "The Master_2";

                            array_delete(_manager.inv, i, 1);

                            text_id = "The Master_3";

                            break;
                        }
                    }
                }
            }

            // Staff crafting quest
            if (text_id == "The Master_3")
            {
                var _manager = instance_find(obj_item_manager, 0);

                if (instance_exists(_manager))
                {
                    var _orb = -1;
                    var _glue = -1;
                    var _stick = -1;

                    for (var i = 0; i < array_length(_manager.inv); i++)
                    {
                        if (_manager.inv[i] == global.item_list.orb)
                            _orb = i;

                        if (_manager.inv[i] == global.item_list.glue)
                            _glue = i;

                        if (_manager.inv[i] == global.item_list.the_stick)
                            _stick = i;
                    }

                    if (_orb != -1 && _glue != -1 && _stick != -1)
                    {
                        _dialog = "The Master_4";

                        // Remove highest indices first
                        var _remove = [_orb, _glue, _stick];

                        for (var a = 0; a < array_length(_remove) - 1; a++)
                        {
                            for (var b = a + 1; b < array_length(_remove); b++)
                            {
                                if (_remove[a] > _remove[b])
                                {
                                    var _temp = _remove[a];
                                    _remove[a] = _remove[b];
                                    _remove[b] = _temp;
                                }
                            }
                        }

                        for (var r = array_length(_remove) - 1; r >= 0; r--)
                        {
                            array_delete(_manager.inv, _remove[r], 1);
                        }

                        var _spawn = instance_find(obj_staff_spawn, 0);

                        if (instance_exists(_spawn))
                        {
                            instance_create_layer(
                                _spawn.x,
                                _spawn.y,
                                "Instances",
                                obj_staff
                            );
                        }

                        text_id = "The Master_5";
                    }
                }
            }

            create_textbox(_dialog);
        }
    }
}