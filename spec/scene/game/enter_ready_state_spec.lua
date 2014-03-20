describe("enter_ready_state", function()
  local enter_ready_state
  
  setup(function()
    initialize_ground = {}
    stub(initialize_ground, "evaluate")
    
    initialize_chick = {}
    stub(initialize_chick, "evaluate")
    
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

  it("Add tap event listener to Runtime in enterScene", function ( ... )
    -- when
    enter_ready_state.evaluate()
    -- then
    assert.stub(Runtime.addEventListener).was_called_with(Runtime, "tap", explode_before_start.evaluate)
  end)
end)