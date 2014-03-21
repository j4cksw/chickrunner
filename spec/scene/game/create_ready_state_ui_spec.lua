describe("create_ready_state_ui", function()
  local create_ready_state_ui
  
  tap_to_start_button = {
    y = 500
  }
  
  local fontname = "f"
  
  setup(function()
    create_tap_to_start_button = {
      evalaute = function()
        return tap_to_start_button 
      end
    }
    stub(create_tap_to_start_button, "evaluate")
    
    get_fontname_by_platform = {}
    stub(get_fontname_by_platform, "evaluate")
    
    display = {
      contentCenterX=600,
      newText = function()
        return fake_ending_score_text
      end
    }
    spy.on(display, "newText")
    
    get_fontname_by_platform = {
      evaluate = function()
        return fontname
      end
    }
    
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
    assert.stub(display.newText).was_called_with("TO", display.contentCenterX, tap_to_start_button.y+20, fontname, 32)
  end)
  
  it("Create text 'start' under 'to'")
  
  it("Create display group")
  
end)