chick_dead_sequence_ended_listener = {}

create_game_over_ui = create_game_over_ui or require("scene.game.gameover.create_game_over_ui")

function chick_dead_sequence_ended_listener.evaluate(event)
  if event.phase == "ended" then
    create_game_over_ui.evaluate()
  end
end

return chick_dead_sequence_ended_listener