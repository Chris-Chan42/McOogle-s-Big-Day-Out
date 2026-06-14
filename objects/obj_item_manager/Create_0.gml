depth = -9999;

//item constructor
function create_item(_name, _des, _spr, _can_drop , _effect) constructor
	{
	name = _name;
	description = _des;
	sprite = _spr;
	can_drop = _can_drop
	effect = _effect;
	}



//create items
global.item_list = 
{

burger : new create_item(
	"Burger",
	"Yummers, heals 3hp",
	spr_burger,
	true,
		function()
		{
			// Heal player
        obj_McOogle.hp += 3;

        // Prevent overhealing
        if (obj_McOogle.hp > obj_McOogle.hp_total)
        {
            obj_McOogle.hp = obj_McOogle.hp_total;
        }

		array_delete(inv, selected_item, 1);
		
		//add half
		array_insert(inv, selected_item, global.item_list.burger_half)
		}
),

burger_half : new create_item(
	"Half of a Burger",
	"Best part for last, heals 1hp",
	spr_burger_half,
	true,
		function()
		{
			// Heal player
        obj_McOogle.hp += 1;

        // Prevent overhealing
        if (obj_McOogle.hp > obj_McOogle.hp_total)
        {
            obj_McOogle.hp = obj_McOogle.hp_total;
        }
		array_delete(inv, selected_item, 1);
		}
),
	
bomb : new create_item(
	"Bomb",
	"Can be used to destroy rubble",
	spr_bomb,
	true,
	function()
		{
			
		var _used = false;
			
		if instance_exists(obj_dummy)
			{
				with(obj_dummy)
				{
				if distance_to_object(obj_McOogle) < 20 {
					instance_destroy();
					_used = true
					}
				}
			}
			
		if _used == true
		{array_delete(inv, selected_item, 1);}
		}
),
package : new create_item(
	"Master's Package",
	"Smells funny",
	spr_package,
	true,
	function()
		{
			
		
		}
),
glue : new create_item(
	"Sticky Glue",
	"Binds things together",
	spr_glue,
	true,
	function()
		{
		
		}
),
orb : new create_item(
	"Purple Orb",
	"Holding this makes my head hurt",
	spr_orb,
	true,
	function()
		{
		
		}
),
the_stick : new create_item(
	"THE STICK",
	"A perfect stick",
	spr_THE_STICK_icon,
	true,
	function()
		{
		
		}
),

}

//create inventory

inv = array_create(0);

inv_max = 5;
selected_item = -1;

//money
global.money = 20;
	
//drawing and mouse position
sep = 16;
screen_bord = 16;

