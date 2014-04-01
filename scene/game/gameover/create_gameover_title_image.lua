create_gameover_title_image = {}

gameover_ui_config = gameover_ui_config or require("config.gameover_ui_config")

function create_gameover_title_image.evaluate()
  gameover_title_image = display.newImage(gameover_ui_config.gameover_title_image_path)
  gameover_title_image.x = display.contentCenterX
  gameover_title_image.y = 215
end

return create_gameover_title_image