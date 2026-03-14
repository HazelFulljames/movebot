if (global.doGameStep) 
{
	var _inst = instance_place(backTile.x, backTile.y, obj_Node) 
	var _conveyor = instance_place(frontTile.x, frontTile.y, obj_Conveyor);

	if (_conveyor != noone and item != Holdable.NONE) {
			var _item = instance_create_layer(frontTile.x, frontTile.y, layer, obj_Item);
			_item.item = item;
	}
	if (_inst != noone) {
		item = _inst.item;
	}
}