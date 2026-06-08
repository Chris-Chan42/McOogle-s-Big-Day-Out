// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function item_add(_item) 
{

var _added = false

if array_length(obj_item_manager.inv) < obj_item_manager.inv_max
{
array_push(obj_item_manager.inv, _item);
_added = true
}

return _added;

}