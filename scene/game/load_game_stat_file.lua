load_game_stat_file = {}

function load_game_stat_file.evaluate()
  local path = system.pathForFile("game_stat", system.DocumentsDirectory)
  local file = io.open(path, "r")
  
  if file then
    local content = file:read("*a")
    local result = json.decode(content)
    io.close(file)
    return result
  end
end

return load_game_stat_file