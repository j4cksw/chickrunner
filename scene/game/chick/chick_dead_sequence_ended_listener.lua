chick_dead_sequence_ended_listener = {}

create_game_over_ui = create_game_over_ui or require("scene.game.gameover.create_game_over_ui")
play_gameover_sound = play_gameover_sound or require("scene.game.gameover.play_gameover_sound")

function chick_dead_sequence_ended_listener.evaluate(event)
  if event.phase == "ended" then
    create_game_over_ui.evaluate()
    play_gameover_sound.evaluate()
  end
end

return chick_dead_sequence_ended_listener