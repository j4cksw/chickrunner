box_sprite_config = {
  path = "img/sprite/box.png",
  options = { width=128, height=128, numFrames=1},
  sequence_data = {
    { name="tnt", start=1, count=1}
  },
  physics_options = {
    {shape={-64,-64,-64,64,64,64}},
    {shape={-50,-64,64,-64}}
  }
}
return box_sprite_config