initialize_game_stat = {}

file_loader = file_loader or require("common.file_loader")

function initialize_game_stat.evaluate()
  local isOk, value = pcall(file_loader.load, "game_stat")
  if isOk then
    game_stat = value
  else
    game_stat = {
      high_score = 0
    }
  end
end

return initialize_game_stat