ground_block_sprite_config = {
	path = "img/sprite/ground_sprite.png",
	options = {width = 128, height = 128, numFrames = 2},
	sequenceData = {
		{name="normal_with_grass", start=1, count=1},
		{name="normal", start=2, count=1}
	},
	shape = { -64, -64, 64, -64, 64, 64, -64, 64}
}

return ground_block_sprite_config