chick_sprite_config = {
  path = "img/sprite/chick.png",
  options = {
    width = 192, height = 192, numFrames = 12
  },
  sequenceData = {
    {name="normal", start=5, count=8, time=350, loopCount=0},
    {name="jump", start=1, count=4, time=100}
  },
  physics_options = {
    {
      density=0.0,
      bounce=0.0
    }
  }
}
return chick_sprite_config