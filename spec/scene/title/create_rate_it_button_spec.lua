describe("create_rate_it_button", function()
  local create_rate_it_button

  local fake_button = {}

  setup(function()
    widget = {
      newButton = function()
        return fake_button
      end
    }
    spy.on(widget, "newButton")
    
    title_scene_config = {
      rate_it_button_default_file="img/ui/rate.png",
      rate_it_button_over_file="img/ui/rate_down.png",
      rate_it_button_x=360,
      rate_it_button_y=900
    }
    
    insert_to_current_view_group = {}
    stub(insert_to_current_view_group, "evaluate")
    
    play_ui_button_sound = {
      evaluate = function()end
    }
    
    create_rate_it_button = require("scene.title.create_rate_it_button")
  end)

  it("should create rate-it button from widget", function()
    create_rate_it_button.evaluate()

    assert.stub(widget.newButton).was_called_with({
      id = "rate-it",
      defaultFile = "img/ui/rate.png",
      overFile= "img/ui/rate_down.png",
      onPress = play_ui_button_sound.evaluate
    })
  end)
  
  it("should set x to 583", function()
    create_rate_it_button.evaluate()
    
    assert.are.equal(fake_button.x, 360)
  end)
  
  it("should set y to 1161", function()
    create_rate_it_button.evaluate()
    
    assert.are.equal(fake_button.y, 900)
  end)
  
  it("should insert to current view group", function()
    create_rate_it_button.evaluate()
    
    assert.stub(insert_to_current_view_group.evaluate).was_called_with(fake_button)
  end)
end)