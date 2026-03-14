draw_self();

if (item != Holdable.NONE) 
{
	draw_sprite(holdableToSprite(item), 0, x, y);
}