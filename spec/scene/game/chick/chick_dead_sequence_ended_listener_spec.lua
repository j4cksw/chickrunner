describe("chick_dead_sequence_ended_listener.evaluate", function()
  local chick_dead_sequence_ended_listener
  
  local event = {
    phase = "ended"
  }
  
  setup(function()
    
    score_text = {}
    
    check_high_score = {}
    stub(check_high_score, "evaluate")
    
    show_ads = {}
    stub(show_ads, "evaluate")
    
    create_ending_score_text = {}
    stub(create_ending_score_text, "evaluate")
    
    create_ending_high_score_text = {}
    stub(create_ending_high_score_text, "evaluate")
  
    chick_dead_sequence_ended_listener = require("scene.game.chick.chick_dead_sequence_ended_listener") 
  end)
  
  it("should show ads when sprite animate ended", function()
    -- when
    chick_dead_sequence_ended_listener.evaluate(event)
    -- then
    assert.stub(show_ads.evaluate).was_called()
  end)
  
  it("When sprite animate ended hide score_text", function()
    -- when
    chick_dead_sequence_ended_listener.evaluate(event)
    -- then
    assert.are.False(score_text.isVisible)
  end)
  
  it("should create ending_score_text when sprite animate ended", function()
    -- when
    chick_dead_sequence_ended_listener.evaluate(event)
    -- then
    assert.stub(create_ending_score_text.evaluate).was_called()
  end)
  
  it("when sprite animate ended. Evalaute check_high_score", function()
    -- when
    chick_dead_sequence_ended_listener.evaluate(event)
    -- then
    assert.stub(check_high_score.evaluate).was_called()
  end)
  
  it("When sprite animate ended show ending_score_text", function()
    -- when
    chick_dead_sequence_ended_listener.evaluate(event)
    -- then
    assert.stub(create_ending_high_score_text.evaluate).was_called()
  end)
  
end)