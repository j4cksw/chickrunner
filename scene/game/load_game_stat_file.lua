load_game_stat_file = {}

function load_game_stat_file.evaluate()
  local path = system.pathForFile("game_stat", system.DocumentsDirectory)
  local file = io.open(path, "r")
end

return load_game_stat_file