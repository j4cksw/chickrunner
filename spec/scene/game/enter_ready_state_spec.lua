describe("enter_ready_state", function()
  local enter_ready_state
  
  setup(function()
    initialize_ground = {}
    stub(initialize_ground, "evaluate")
    
    initialize_chick = {}
    stub(initialize_chick, "evaluate")
    
    generate_obstacles_from_config = {}
    stub(generate_obstacles_from_config, "evaluate")
    
    Runtime = {}
    stub(Runtime, "addEventListener")
    
    enter_ready_state = require("scene.game.enter_ready_state")
  end)
  
  it("Evaluate initialize_ground in enterScene", function ( ... )
    -- when
    enter_ready_state.evaluate()
    -- then
    assert.stub(initialize_ground.evaluate).was_called()
  end)
  
  it("Evalaute initialize_chick in enterScene", function()
   -- when
   enter_ready_state.evaluate()
   -- then
   assert.stub(initialize_chick.evaluate).was_called()
  end)
  
  it("Evaluate generate_obstacles_from_config", function()
    -- when
    enter_ready_state.evaluate()
    -- then
    assert.stub(generate_obstacles_from_config.evaluate).was_called()
  end)
  
  it("Evaluate hide_all_obstacles")
  
  it("Evaluate play_chick_ready_sound")

  it("Add tap event listener to Runtime in enterScene", function ( ... )
    -- when
    enter_ready_state.evaluate()
    -- then
    assert.stub(Runtime.addEventListener).was_called_with(Runtime, "tap", explode_before_start.evaluate)
  end)
end)