describe("create_ready_state_ui", function()
  local create_ready_state_ui
  
  local tap_to_start_button = {
    y = 500,
    x = 500
  }
  
  local fontname = "f"
  
  local fake_ui_group = {
    y = 500
  }
  
  local fake_first_text = {"first_text", y=620}
  local fake_second_text = {"second_text", y=999}
  
  local fake_tutorial_image = {"fake_image"}
  
  setup(function()
  
    game_scene_config = {
      ready_first_text_y_offset = 20
    }
    
    create_tap_to_start_button = {
      evaluate = function()
        return tap_to_start_button 
      end
    }
    spy.on(create_tap_to_start_button, "evaluate")
    
    get_fontname_by_platform = {}
    stub(get_fontname_by_platform, "evaluate")
    
    display = {
      contentCenterX=600,
      newText = function(text)
        if text == "TO" then
          return fake_first_text
        else
          return fake_second_text
        end
      end,
      newGroup = function()
        return fake_ui_group
      end,
      newImage = function()
        return fake_tutorial_image
      end
    }
    spy.on(display, "newText")
    spy.on(display, "newGroup")
    spy.on(display, "newImage")
    
    get_fontname_by_platform = {
      evaluate = function()
        return fontname
      end
    }
    
    stub(fake_ui_group, "insert")
    
    create_ready_state_ui = require("scene.game.create_ready_state_ui")
  end)
  
  it("Evaluate create_tap_to_start_button", function()
    -- when
    create_ready_state_ui.evaluate()
    -- then
    assert.stub(create_tap_to_start_button.evaluate).was_called()
  end)
  
  it("Create 'to' text under tap button", function()
    -- when
    create_ready_state_ui.evaluate()
    -- then
    assert.stub(display.newText)
      .was_called_with("TO",
       display.contentCenterX,
       tap_to_start_button.y+game_scene_config.ready_first_text_y_offset,
       fontname, 32)
  end)
  
  it("Create display group", function()
    -- when
    create_ready_state_ui.evaluate()
    -- then
    assert.stub(display.newGroup).was_called()
  end)
  
  it("Insert tap button to ready_state_ui_group", function()
    -- when
    create_ready_state_ui.evaluate()
    -- then
    assert.stub(fake_ui_group.insert).was_called_with(fake_ui_group, tap_to_start_button)
  end)
  
  it("Insert 'to' to ready_state_ui_group", function()
    -- when
    create_ready_state_ui.evaluate()
    -- then
    assert.stub(fake_ui_group.insert).was_called_with(fake_ui_group, fake_first_text)
  end)
  
  it("Create text 'start' under 'to'", function()
    -- when
    create_ready_state_ui.evaluate()
    -- then
    assert.stub(display.newText).was_called_with("START", display.contentCenterX, fake_first_text.y+50, fontname, 48)
  end)
  
  it("Insert 'start' to group", function()
    -- when
    create_ready_state_ui.evaluate()
    -- then
    assert.stub(fake_ui_group.insert).was_called_with(fake_ui_group, fake_second_text)
  end)
  
  it("Create tutorial image", function()
    -- when
    create_ready_state_ui.evaluate()
    -- then
    assert.stub(display.newImage).was_called_with("img/screen/ready/tutorial.png")
  end)
  
  it("Insert tutorial image to group", function()
    -- when
    create_ready_state_ui.evaluate()
    -- then
    assert.stub(fake_ui_group.insert).was_called_with(fake_ui_group, fake_tutorial_image)
  end)
end)