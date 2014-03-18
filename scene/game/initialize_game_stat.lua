initialize_game_stat = {}

load_game_stat_file = load_game_stat_file or require("scene.game.load_game_stat_file")

function initialize_game_stat.evaluate()
  local isOk, value = pcall(load_game_stat_file.evaluate)

  if isOk then
    game_stat = value
  end
end

return initialize_game_stat