check_high_score = {}

save_game_stat_file = save_game_stat_file or require("utils.save_game_stat_file")
create_new_high_score_image = create_new_high_score_image or require("scene.game.gameover.create_new_high_score_image")
gameNetwork = gameNetwork or require("gameNetwork")

function check_high_score.evaluate()
  create_new_high_score_image.evaluate()
  if current_score > game_stat.high_score then
    game_stat.high_score = current_score
    save_game_stat_file.evaluate()
    new_high_score_image.isVisible = true
    gameNetwork.request("setHighScore",
      {
        localPlayerScore = { 
          category="runchickenrun", 
          value=game_stat.high_score 
        },
        listener=requestCallback
      })
  end
end

function requestCallback(event)
  print(event.type)
end

return check_high_score