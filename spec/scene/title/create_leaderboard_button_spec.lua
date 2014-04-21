describe("create_leaderboard_button_spec", function()
  local create_leaderboard_button
  
  setup(function()
    play_ui_button_sound = {}
    stub(play_ui_button_sound, "evaluate")
  
    create_leaderboard_button = require("scene.title.create_leaderboard_button")
  end)
  
  it("create leaderboard button", function()
    create_leaderboard_button.evaluate()
    
    assert.stub(widget.newButton).was_called_with({
      defaultFile="img/ui/rank.png",
      overFile="img/ui/rank_down.png",
      onPress=play_ui_button_sound.evaluate
    })
  end)
end)