create_gameover_title_image = {}

function create_gameover_title_image.evaluate()
  gameover_title_image = display.newImage("img/screen/gameover/gameover.png")
  gameover_title_image.x = display.contentCenterX
  gameover_title_image.y = 215
end

return create_gameover_title_image