save_game_stat_file = {}

json = json or require("json")

function save_game_stat_file.evaluate()
  local pathToFile = system.pathForFile( "game_stat" , system.DocumentsDirectory )

  local file = io.open( pathToFile, "w" )

  if file then
    local contents = json.encode( game_stat )
    file:write( contents )
    io.close( file )
  else
    error("Cannot save to file")
  end
end

return save_game_stat_file