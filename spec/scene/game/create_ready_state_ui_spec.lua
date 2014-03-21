describe("create_ready_state_ui", function()
  local create_ready_state_ui
  
  local tap_to_start_button = {
    y = 500
  }
  
  local fontname = "f"
  
  local fake_ui_group = {}
  
  setup(function()
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
      newText = function()
        return fake_text
      end,
      newGroup = function()
        return fake_ui_group
      end
    }
    spy.on(display, "newText")
    spy.on(display, "newGroup")
    
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
    assert.stub(display.newText).was_called_with("TO", display.contentCenterX, tap_to_start_button.y+120, fontname, 32)
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
  
  it("Insert 'to' to ready_state_ui_group")
  
  it("Create text 'start' under 'to'")
end)