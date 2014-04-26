file_loader = {}

function file_loader.load(filename)
  local path = system.pathForFile(filename, system.DocumentsDirectory)
  local file = io.open(path, "r")
  
  if file then
    local content = file:read("*a")
    local result = json.decode(content)
    io.close(file)
    return result
  else
    print("File not found")
    error("File not found")  
  end
end

return file_loader