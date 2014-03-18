describe("chick_dead_sequence_ended_listener.evaluate", function()
  local chick_dead_sequence_ended_listener
  
  local event = {
    phase = "ended"
  }
  
  local fontname = ""
  
  local fake_ending_score_text = {}
  
  setup(function()
  
    current_score = 100
    
    game_stat = {
      high_score = 1000
    }
    
    game_scene_config = {
      ending_score_text_y = 65,
      ending_score_text_size = 125,
      ending_high_score_text_y = 75
    }
    
    get_fontname_by_platform = {
      evaluate = function()
        return fontname
      end
    }
    
    spy.on(get_fontname_by_platform, "evaluate")
    
    display = {
      contentCenterX=600,
      newText = function()
        return fake_ending_score_text
      end
    }
    spy.on(display, "newText")
    
    score_text = {}
  
    chick_dead_sequence_ended_listener = require("scene.game.chick.chick_dead_sequence_ended_listener") 
  end)
  
  it("When sprite animate ended hide score_text", function()
    -- when
    chick_dead_sequence_ended_listener.evaluate(event)
    -- then
    assert.are.False(score_text.isVisible)
  end)
  
  it("When sprite animate ended show ending_score_text", function()
    -- when
    chick_dead_sequence_ended_listener.evaluate(event)
    -- then
    assert.stub(display.newText).was_called_with("Distance: 100m",
     display.contentCenterX,
      game_scene_config.ending_score_text_y,
      fontname,
      game_scene_config.ending_score_text_size)
  end)
  
  it("When sprite animate ended set text to global ending_score_text", function()
    -- when
    chick_dead_sequence_ended_listener.evaluate(event)
    -- then
    assert.are.equal(ending_score_text, fake_ending_score_text)
  end)
  
  it("When sprite animate ended show ending_score_text", function()
    -- when
    chick_dead_sequence_ended_listener.evaluate(event)
    -- then
    assert.stub(display.newText).was_called_with("Highest: 1000m",
     display.contentCenterX,
      game_scene_config.ending_high_score_text_y,
      fontname,
      game_scene_config.ending_score_text_size)
  end)
  
  it("When sprite animate ended set text to global ending_score_text")
  
end)