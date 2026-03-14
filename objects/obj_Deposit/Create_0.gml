recievedAmount = 0;

function collideWithPlayer(player) {
	if (player.holding == desiredItem and recievedAmount < requiredAmount) {
		player.holding = Holdable.NONE;
		recievedAmount += 1;
		player.energy -= 1;
	}
}