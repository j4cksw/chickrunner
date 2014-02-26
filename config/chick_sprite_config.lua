chick_sprite_config = {
  path = "img/sprite/chick.png",
  options = {
    width = 256, height = 256, numFrames = 39
  },
  sequenceData = {
    {name="run", start=31, count=8, time=350, loopCount=0},
    {name="jump", start=28, count=4, time=100},
    {name="burn", start=1, count=8, time=100}
  },
  physics_options = {
      density=0.0,
      bounce=0.0,
      shape = {
          60, -38,
          60, 75,
          -40, 75,
          -40, -38
      }
  }
}
return chick_sprite_config