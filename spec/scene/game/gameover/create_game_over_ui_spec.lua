describe("create_game_over_ui", function()
  local create_game_over_ui

  setup(function()
    score_text = {}

    create_gameover_title_image = {}
    stub(create_gameover_title_image, "evaluate")

    create_score_panel = {}
    stub(create_score_panel, "evaluate")

    create_play_again_button = {}
    stub(create_play_again_button, "evaluate")

    create_gameover_ui_group = {}
    stub(create_gameover_ui_group, "evaluate")

    check_high_score = {}
    stub(check_high_score, "evaluate")

    create_game_over_ui = require("scene.game.gameover.create_game_over_ui")
  end)

  it("should create gameover title image", function()
    create_game_over_ui.evaluate()

    assert.stub(create_gameover_title_image.evaluate).was_called()
  end)

  it("should hide score_text", function()
    create_game_over_ui.evaluate()

    assert.are.False(score_text.isVisible)
  end)

  it("should create score panel", function()
    create_game_over_ui.evaluate()

    assert.stub(create_score_panel.evaluate).was_called()
  end)

  it("should create play again button", function()
    create_game_over_ui.evaluate()

    assert.stub(create_play_again_button.evaluate).was_called()
  end)

  it("should create gameover ui grounp", function()
    create_game_over_ui.evaluate()

    assert.stub(create_gameover_ui_group.evaluate).was_called()
  end)

  it("should evalaute check_high_score", function()
    create_game_over_ui.evaluate()

    assert.stub(check_high_score.evaluate).was_called()
  end)
end)