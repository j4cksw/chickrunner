create_pedal_image = {}

function create_pedal_image.evaluate()
  if current_score >= 50 then
    pedal_image = display.newImage("img/screen/gameover/pendal_red.png")
    pedal_image.x = 550
    pedal_image.y = 448
    gameover_ui_group:insert(pedal_image)
  end
end

return create_pedal_image