draw_self();

if (holding != Holdable.NONE) 
{
	draw_text(x, y, holdableToString(holding));
}

if (machine != Machine.NONE) 
{
	var _destX = round((mouse_x-HALF_GRID_SIZE)/GRID_SIZE)*GRID_SIZE;
	var _destY = round((mouse_y-HALF_GRID_SIZE)/GRID_SIZE)*GRID_SIZE;
	if (position_meeting(_destX, _destY, obj_Floor) and not position_meeting(_destX, _destY, obj_Collidable) and abs(x - _destX) < GRID_SIZE*2 and abs(y - _destY) < GRID_SIZE*2 and not position_meeting(_destX, _destY, self))
	{
		draw_sprite_ext(machineToSprite(machine), rotation, _destX, _destY, 1, 1, 0, -1, 0.5);
		if (mouse_check_button_released(mb_any)) 
		{
			var _inst = instance_create_layer(_destX, _destY, layer, machineToObject(machine));
			_inst.rotation = rotation % 4;
			_inst.image_index = rotation % 4;
		}
	}
	if (keyboard_check_pressed(ord("R"))) 
	{
		rotation += 1;
	}
}