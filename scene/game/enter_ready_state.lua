enter_ready_state = {}

generate_obstacles_from_config = generate_obstacles_from_config or require("scene.game.obstacle.generate_obstacles_from_config")
hide_all_obstacles = hide_all_obstacles or require("scene.game.obstacle.hide_all_obstacles")
ready_state_tap_listener = ready_state_tap_listener or require("scene.game.ready_state_tap_listener")
create_ready_state_ui = create_ready_state_ui or require("scene.game.create_ready_state_ui")
show_top_ads = show_top_ads or require("common.ads.show_top_ads")

function enter_ready_state.evaluate()
  show_top_ads.evaluate()
  audio.play(chick_ready_sound, {loops=-1, channel=4})
  generate_obstacles_from_config.evaluate()
  hide_all_obstacles.evaluate()
  create_ready_state_ui.evaluate()
end

return enter_ready_state