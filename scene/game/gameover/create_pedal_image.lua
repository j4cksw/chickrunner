create_pedal_image = {}

gameover_ui_config = gameover_ui_config or require("config.gameover_ui_config")
get_pedal_by_score = get_pedal_by_score or require("scene.game.gameover.get_pedal_by_score")

function create_pedal_image.evaluate()
  if current_score >= 50 then
    pedal_image = display.newImage(get_pedal_by_score.evaluate())
    pedal_image.x = gameover_ui_config.pedal_image_x
    pedal_image.y = gameover_ui_config.pedal_image_y
  end
end

return create_pedal_image