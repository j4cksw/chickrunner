file_saver = {}

function file_saver.save(filename, data)
  local pathToFile = system.pathForFile( filename , system.DocumentsDirectory )

  local file = io.open( pathToFile, "w" )

  if file then
    local contents = json.encode( data )
    file:write( contents )
    io.close( file )
  else
    error("Cannot save to file")
  end
end

return file_saver