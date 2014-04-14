describe("transit_to_game_scene", function()
  local transit_to_game_scene

  setup(function()
    storyboard = {}
    stub(storyboard, "gotoScene")
    
    hide_ads = {}
    stub(hide_ads, "evaluate")

    transit_to_game_scene = require("scene.title.transit_to_game_scene")
  end)

  it("Go to game scene when push start button", function()
    -- when
    transit_to_game_scene.evaluate()
    -- then
    assert.stub(storyboard.gotoScene).was_called_with("scene.game.game_scene",{
      effect = "fade",
      time = 500})
  end)

end)