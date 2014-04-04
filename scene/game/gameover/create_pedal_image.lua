create_pedal_image = {}

function create_pedal_image.evaluate()
  if current_score >= 50 then
    pedal_image = display.newImage("img/screen/gameover/pendal_red.png")
  end
end

return create_pedal_image