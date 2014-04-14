describe("create_start_button", function()
  local create_start_button
  
  local fake_button = {}
  
  setup(function()
    widget = {
      newButton = function()
        return fake_button
      end
    }
    spy.on(widget, "newButton")
    
    display = {
      contentCenterX = 10,
    }
    
    play_ui_button_sound = {
      evaluate=function()end
    }
    
    transit_to_game_scene = {
      evaluate=function()end
    }
    
    insert_to_current_view_group = {}
    stub(insert_to_current_view_group, "evaluate")
    
    create_start_button = require("scene.title.create_start_button")
  end)
  
  it("Create start button", function()
    create_start_button.evaluate()
    
    assert.stub(widget.newButton).
      was_called_with({
        id="start",
        defaultFile="img/ui/start.png",
        overFile="img/ui/start_down.png",
        onPress=play_ui_button_sound.evaluate,
        onRelease=transit_to_game_scene.evaluate
      })
  end)

  it("Set start button on center of screen", function()
    create_start_button.evaluate()
    
    assert.are.equal(fake_button.x, display.contentCenterX)
    assert.are.equal(fake_button.y, 740)
  end)
  
  it("should insert start button to current view group", function()
    create_start_button.evaluate()
    
    assert.stub(insert_to_current_view_group.evaluate).was_called_with(fake_button)
  end)
  
end)