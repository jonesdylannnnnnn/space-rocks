obj_game.points += 50;

instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, c_white);

direction = random(360);

if sprite_index == spr_atom
{
	sprite_index = spr_neutron;
	instance_copy(true);
}
else if instance_number(obj_atom) < 12
{
	sprite_index = spr_atom;
	x = -100;
}
else
{
	instance_destroy();
}

