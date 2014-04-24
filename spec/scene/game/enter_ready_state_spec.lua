describe("enter_ready_state", function()
  local enter_ready_state
  
  setup(function()    
    generate_obstacles_from_config = {}
    stub(generate_obstacles_from_config, "evaluate")
    
    hide_all_obstacles = {}
    stub(hide_all_obstacles, "evaluate")
    
    chick_ready_sound = {"fake_chick_ready_sound"}
    audio = {}
    stub(audio, "play")
    
    create_ready_state_ui = {}
    stub(create_ready_state_ui, "evaluate")
    
    ready_state_tap_listener = {}
    stub(ready_state_tap_listener, "evaluate")
    
    Runtime = {}
    stub(Runtime, "addEventListener")
    
    show_top_ads = {}
    stub(show_top_ads, "evaluate")
    
    enter_ready_state = require("scene.game.enter_ready_state")
  end)
  
  it("should show ads at top of screen", function()
    enter_ready_state.evaluate()
    
    assert.stub(show_top_ads.evaluate).was_called()
  end)
  
  it("Evaluate generate_obstacles_from_config", function()
    -- when
    enter_ready_state.evaluate()
    -- then
    assert.stub(generate_obstacles_from_config.evaluate).was_called()
  end)
  
  it("Evaluate hide_all_obstacles", function()
    -- when
    enter_ready_state.evaluate()
    -- then
    assert.stub(hide_all_obstacles.evaluate).was_called()
  end)
  
  it("Evaluate play_chick_ready_sound", function()
    -- when
    enter_ready_state.evaluate()
    -- then
    assert.stub(audio.play).was_called_with(chick_ready_sound, {loops=-1, channel=4})
  end)
  
  it("Evaluate create_ready_state_ui", function()
    -- when
    enter_ready_state.evaluate()
    -- then
    assert.stub(create_ready_state_ui.evaluate).was_called()
  end)
  
end)