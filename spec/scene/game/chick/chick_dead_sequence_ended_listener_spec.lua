describe("chick_dead_sequence_ended_listener.evaluate", function()
  local chick_dead_sequence_ended_listener
  
  local event = {
    phase = "ended"
  }
  
  setup(function()
    display = {}
    stub(display, "remove")
    
    score_text = {}
  
    chick_dead_sequence_ended_listener = require("scene.game.chick.chick_dead_sequence_ended_listener") 
  end)
  
  it("When sprite animate ended Remove score_text", function()
    -- when
    chick_dead_sequence_ended_listener.evaluate(event)
    -- then
    assert.stub(display.remove).was_called_with(score_text)
  end)
end)