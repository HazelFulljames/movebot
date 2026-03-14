function collideWithPlayer(player) {
	if (player.holding == Holdable.NONE) {
		player.holding = item;
		player.x = x;
		player.y = y;
		player.energy -= 1;
		instance_destroy(self);
	}
}

projectedPosition = instance_create_layer(x, y, layer, obj_Collider);