describe("create_ready_state_ui", function()
  local create_ready_state_ui
  
  setup(function()
    create_tap_to_start_button = {}
    stub(create_tap_to_start_button, "evaluate")
    
    create_ready_state_ui = require("scene.game.create_ready_state_ui")
  end)
  
  it("Evaluate create_tap_to_start_button", function()
    -- when
    create_ready_state_ui.evaluate()
    -- then
    assert.stub(create_tap_to_start_button.evaluate).was_called()
  end)
  
end)