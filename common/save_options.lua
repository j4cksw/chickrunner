save_options = {}

file_saver = file_saver or require("common.file_saver")

function save_options.evaluate()
  file_saver.save("options", options)
end

return save_options