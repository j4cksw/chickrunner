describe("create_leaderboard_button_spec", function()
  local create_leaderboard_button
  
  setup(function()
    create_leaderboard_button = require("scene.title.create_leaderboard_button")
  end)
  
  it("create leaderboard button", function()
    create_leaderboard_button.evaluate()
    
    assert.stub(widget.newButton).was_called_with({
      defaultFile="img/ui/rank.png"
    })
  end)
end)