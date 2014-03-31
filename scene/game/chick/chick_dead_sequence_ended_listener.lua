chick_dead_sequence_ended_listener = {}

get_fontname_by_platform = get_fontname_by_platform or require("utils.get_fontname_by_platform")
game_scene_config = game_scene_config or require("config.game_scene_config")
check_high_score = check_high_score or require("scene.game.check_high_score")
show_ads = show_ads or require("common.ads.show_ads")
create_ending_score_text = create_ending_score_text or require("scene.game.gameover.create_ending_score_text")

function chick_dead_sequence_ended_listener.evaluate(event)
  if event.phase == "ended" then
    show_ads.evaluate()
    
    score_text.isVisible = false
    
    create_ending_score_text.evaluate()
    
    check_high_score.evaluate()
    
    ending_high_score_text = display.newText("Highest: "..game_stat.high_score.."m",
      display.contentCenterX,
      game_scene_config.ending_high_score_text_y,
      get_fontname_by_platform.evaluate(),
      game_scene_config.ending_score_text_size)
  end
end

return chick_dead_sequence_ended_listener