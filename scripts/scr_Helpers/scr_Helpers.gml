function holdableToString(holdable) {
	switch (holdable) {
		case Holdable.NONE:
			return "ERROR"
		case Holdable.ROCK:
			return "Rock"
	}
}

function holdableToSprite(holdable) {
	switch (holdable) {
		case Holdable.NONE:
			print("ERROR, INVALID HOLDABLE");
			return spr_Collider;
		case Holdable.ROCK:
			return spr_Item;
	}
}

function print() {
	var _string = "";
	for (var i = 0; i < argument_count; i++) {
		_string += string(argument[i]) + ", ";
	}
	show_debug_message(_string);
}

function machineToSprite(item) {
	switch (item) {
		case Machine.NONE:
			// print("ERROR, INVALID ITEM");
			return spr_Collider;
		case Machine.EXTRACTOR:
			return spr_Extractor;
		case Machine.CONVEYOR:
			return spr_Conveyor;
	}
}

function machineToObject(machine) {
	switch (machine) {
		case Machine.NONE:
			//print("ERROR, INVALID ITEM");
			return obj_Node;
		case Machine.EXTRACTOR:
			return obj_Extractor;
		case Machine.CONVEYOR:
			return obj_Conveyor;
	}
}

function getFrontAndBackPositions(machine) {
	var _front = {x: -1, y: -1};
	var _back = {x: -1, y: -1};
	switch (machine.rotation) {
		case Direction.UP:
			_front =  {x: machine.x, y: machine.y - GRID_SIZE};
			_back = {x: machine.x, y: machine.y + GRID_SIZE};
			break;
		case Direction.RIGHT:
			_front = {x: machine.x + GRID_SIZE, y: machine.y};
			_back = {x: machine.x - GRID_SIZE, y: machine.y};
			break;
		case Direction.DOWN:
			_front = {x: machine.x, y: machine.y + GRID_SIZE};
			_back = {x: machine.x, y: machine.y - GRID_SIZE};
			break;
		case Direction.LEFT:
			_front = {x: machine.x - GRID_SIZE, y: machine.y};
			_back = {x: machine.x + GRID_SIZE, y: machine.y};
			break;
	}
	return {front: _front, back: _back};
}