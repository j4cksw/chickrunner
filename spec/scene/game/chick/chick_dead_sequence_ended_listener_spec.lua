describe("chick_dead_sequence_ended_listener.evaluate", function()
  local chick_dead_sequence_ended_listener
  
  local event = {
    phase = "ended"
  }
  
  setup(function()
    
    create_game_over_ui = {}
    stub(create_game_over_ui, "evaluate")
  
    chick_dead_sequence_ended_listener = require("scene.game.chick.chick_dead_sequence_ended_listener") 
  end)
  
  it("should create gameover ui when sprite animate ended", function()
    chick_dead_sequence_ended_listener.evaluate(event)
    
    assert.stub(create_game_over_ui.evaluate).was_called()
  end)
  
end)