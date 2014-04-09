describe("verify_chick_position", function()
  local verify_chick_position

  setup(function()
    verify_chick_position = require("scene.game.verify_chick_position")
  end)

  it("should move chick to start position when its x position lower than config", function()
    game_scene_config = {
      chick_start=192
    }
    
    chick = {
      x = 191,
      sequence="run"
    }
    
    transition = {}
    stub(transition, "to")

    verify_chick_position.evaluate()

    assert.stub(transition.to).was_called_with(chick, {time=100, x=game_scene_config.chick_start, onComplete=removeTransition})
  end)

end)