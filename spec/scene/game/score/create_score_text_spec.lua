describe("create_score_text", function()
  local create_score_text
  
  local fontname = "font#1"
  
  local _score_text = {}
  
  setup(function()
    display = {
      newText = function()
        return _score_text
      end,
      contentCenterX = 350
    }
    spy.on(display, "newText")
    
    game_scene_config = {
      score_text_y = 65,
      score_text_size = 125
    }
    
    get_fontname_by_platform = {
      evaluate = function()
        return fontname
      end
    }
    spy.on(get_fontname_by_platform, "evaluate")
  
    create_score_text = require("scene.game.score.create_score_text")
  end)
  
  it("Evaalute get_fontnamr_by_platform", function()
    -- when
    create_score_text.evaluate()
    -- then
    assert.stub(get_fontname_by_platform.evaluate).was_called()
  end)
  
  it("Evalaute display.newText", function()
    -- when
    create_score_text.evaluate()
    -- then
    assert.stub(display.newText).was_called_with("0m",
     display.contentCenterX,
      game_scene_config.score_text_y,
      fontname,
      game_scene_config.score_text_size)
  end)
  
  it("Set text to global variable score_text", function()
    -- when
    create_score_text.evaluate()
    -- then
    assert.are.equal(score_text, _score_text)
  end)
end)