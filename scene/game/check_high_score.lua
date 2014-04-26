check_high_score = {}

save_game_stat = save_game_stat or require("common.save_game_stat")
create_new_high_score_image = create_new_high_score_image or require("scene.game.gameover.create_new_high_score_image")
gameNetwork = gameNetwork or require("gameNetwork")

function check_high_score.evaluate()
  create_new_high_score_image.evaluate()
  if current_score > game_stat.high_score then
    game_stat.high_score = current_score
    save_game_stat.evaluate()
    new_high_score_image.isVisible = true
    gameNetwork.request("setHighScore",
      {
        localPlayerScore = {
          category="runchickenrun",
          value=current_score
        },
        listener=requestCallback
      })
  end
end

function requestCallback(event)
  print(event.data)
end

return check_high_score