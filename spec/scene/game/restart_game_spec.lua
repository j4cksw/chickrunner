describe("restart_game", function()
  local restart_game

  setup(function()

      storyboard = {}
      stub(storyboard, "reloadScene")

      remove_obstacles = {}
      stub(remove_obstacles, "evaluate")

      Runtime = {}
      stub(Runtime, "removeEventListener")

      display = {}
      stub(display, "remove")

      hide_ads = {}
      stub(hide_ads, "evaluate")

      initialize_chick = {}
      stub(initialize_chick, "evaluate")

      restart_game = require("scene.game.restart_game")
  end)

  it("should hide ads", function()
    restart_game.evaluate()

    assert.stub(hide_ads.evaluate).was_called()
  end)

  it("Remove tap event listener from runtime", function()
    -- when
    restart_game.evaluate()
    -- then
    assert.stub(Runtime.removeEventListener).was_called_with(Runtime, "tap", restart_game.evaluate)
  end)

  it("Remove chick sprite", function()
    -- when
    restart_game.evaluate()
    -- then
    assert.stub(display.remove).was_called_with(chick)
  end)

  it("Evalaute storyboard.reloadScene", function()
    -- when
    restart_game.evaluate()
    -- then
    assert.stub(storyboard.reloadScene).was_called()
  end)

  it("Evalaute remove_obstacles", function()
    -- when
    restart_game.evaluate()
    -- then
    assert.stub(remove_obstacles.evaluate).was_called()
  end)

  it("Remove ending_high_score_text from display", function()
    -- given
    gameover_ui_group = {"fake_gameover_ui_group"}
    -- when
    restart_game.evaluate()
    -- then
    assert.stub(display.remove).was_called_with(gameover_ui_group)
  end)

  it("should evalaute initialize_chick", function()
    restart_game.evaluate()

    assert.stub(initialize_chick.evaluate).was_called()
  end)
end)