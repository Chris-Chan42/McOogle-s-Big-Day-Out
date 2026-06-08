action = function()
{
	if (obj_battle_player.data.spell >= 1)
	{
		obj_battle_player.data.spell = 0;
		
		obj_battle_manager.player_attack(obj_battle_player.data.damage * 2);
	}
}