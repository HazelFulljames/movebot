if (obj_Player.energy <= 0) {
	room_goto(room);
}

var _levelPassed = true;
for (var i = 0; i < instance_number(obj_Deposit); i++) 
{
	var _inst = instance_find(obj_Deposit, i);
	if (_inst.recievedAmount < _inst.requiredAmount)
	{
		_levelPassed = false;
	}
}

if (_levelPassed) 
{
	room_goto_next();
}