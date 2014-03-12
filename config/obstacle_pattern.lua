obstacle_pattern = {
  short_space={
    {"space", "space", "space"}
  },
  long_space={
    {"space", "space", "space", "space", "space", "space" }
  },
  single_box={
    { "box" } 
  },
  double_horizontal_box={
    { "box", "box" } 
  },
  double_vertical_box={
    { "box" },
    { "box" } 
  },
  ladder_1={
    { "box", "box", "box"},
    { "space", "space", "box"}
  },
  short_zigzag_box={
    { "box", "space", "box", "space", "box"}
  },
  short_air_zigzag={
    { "space", "space", "space"},
    { "box", "space", "box"}
  },
  
}

return obstacle_pattern