chick_dead_sequence_ended_listener = {}
get_fontname_by_platform = get_fontname_by_platform or require("utils.get_fontname_by_platform")
game_scene_config = game_scene_config or require("config.game_scene_config")

function chick_dead_sequence_ended_listener.evaluate(event)
  if event.phase == "ended" then
    score_text.isVisible = false
    
    ending_score_text = display.newText("Distance: "..current_score.."m",
      display.contentCenterX,
      game_scene_config.ending_score_text_y,
      get_fontname_by_platform.evaluate(),
      game_scene_config.ending_score_text_size)
  end
end

return chick_dead_sequence_ended_listener