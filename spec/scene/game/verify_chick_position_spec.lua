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
    stub(chick, "setLinearVelocity")

    verify_chick_position.evaluate()

    assert.stub(chick.setLinearVelocity).was_called_with(chick, 100, 0.0)
  end)

  it("should stop moving when chick reached the start position")
end)