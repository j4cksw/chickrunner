create_new_high_score_image = {}

gameover_ui_config = gameover_ui_config or require("config.gameover_ui_config")
      
function create_new_high_score_image.evaluate()
  new_high_score_image = display.newImage(gameover_ui_config.new_high_score_image_path)
  new_high_score_image.x = gameover_ui_config.new_high_score_image_x
  new_high_score_image.y = gameover_ui_config.new_high_score_image_y
end 

return create_new_high_score_image