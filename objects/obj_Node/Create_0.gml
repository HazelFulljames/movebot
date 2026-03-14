function collideWithPlayer(player) {
	if (player.holding == Holdable.NONE) 
	{
		player.energy -= 1;
	}
	player.holding = item;
	
}