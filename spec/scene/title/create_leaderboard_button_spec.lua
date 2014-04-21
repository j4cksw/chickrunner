describe("create_leaderboard_button_spec", function()
  local create_leaderboard_button
  
  local fake_button = {}
  
  setup(function()
    widget = {
      newButton = function()
        return fake_button
      end
    }
    spy.on(widget, "newButton")
    
    play_ui_button_sound = {}
    stub(play_ui_button_sound, "evaluate")
    
    insert_to_current_view_group = {}
    stub(insert_to_current_view_group, "evaluate")
  
    create_leaderboard_button = require("scene.title.create_leaderboard_button")
  end)
  
  it("should create leaderboard button", function()
    create_leaderboard_button.evaluate()
    
    assert.stub(widget.newButton).was_called_with({
      defaultFile="img/ui/rank.png",
      overFile="img/ui/rank_down.png",
      onPress=play_ui_button_sound.evaluate
    })
  end)
  
  it("should insert to current view group", function()
    create_leaderboard_button.evaluate()
    
    assert.stub(insert_to_current_view_group.evaluate).was_called_with(fake_button)
  end)
  
  it("should set y to 890", function()
    create_leaderboard_button.evaluate()
    
    assert.are.equal(fake_button.y, 890)
  end)
  
  it("should set x to 251", function()
    create_leaderboard_button.evaluate()
    
    assert.are.equal(fake_button.x, 251)
  end)
end)