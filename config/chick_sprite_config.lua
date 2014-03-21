chick_sprite_config = {
  path = "img/sprite/chick.png",
  options = {
    width = 256, height = 256, numFrames = 48
  },
  sequenceData = {
    {name="run", start=31, count=8, time=350},
    {name="jump", start=28, count=4, time=100},
    {name="ignite", start=1, count=3, time=300, loopCount=1},
    {name="burn", start=4, count=5, time=300},
    {name="dead", start=9, count=19, time=1500, loopCount=1},
    {name="idle", start=40, count=9, time=800}
  },
  physics_options = {
      friction=0.0,
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