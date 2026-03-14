function collideWithPlayer(player) {
	if (item != Holdable.NONE) {
		player.holding = item;
		player.energy -= 1;
		item = Holdable.NONE;
	}
}

alarm[0] = 1;

backTile = {x: -1, y: -1};
frontTile = {x: -1, y: -1};

item = Holdable.NONE;