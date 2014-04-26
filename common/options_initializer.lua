options_initializer = {}

file_loader = file_loader or require("common.file_loader")

function options_initializer.initialize()
  local call_result, value = pcall(file_loader.load, "options")
  if call_result then
    options = value
  end
end

return options_initializer