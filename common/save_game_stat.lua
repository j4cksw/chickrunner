save_game_stat_file = {}

file_saver = file_saver or require("common.file_saver")

function save_game_stat_file.evaluate()
  file_saver.save("game_stat", game_stat)
end

return save_game_stat_file