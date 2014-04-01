create_gameover_title_image = {}

function create_gameover_title_image.evaluate()
  gameover_title_image = display.newImage("img/screen/gameover/gameover.png")
  gameover_title_image.x = display.contentCenterX
end

return create_gameover_title_image