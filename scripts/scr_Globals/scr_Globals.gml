#macro GRID_SIZE 16
#macro HALF_GRID_SIZE 8

global.doGameStep = false;

enum Holdable {
	NONE,
	ROCK
}

enum Machine {
	NONE,
	EXTRACTOR,
	CONVEYOR
}

enum Direction {
	UP,
	RIGHT,
	DOWN,
	LEFT
}