describe("create_game_over_ui", function()
  local create_game_over_ui
  
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
    
    create_gameover_title_image = {}
    stub(create_gameover_title_image, "evaluate")
  
    create_game_over_ui = require("scene.game.gameover.create_game_over_ui") 
  end)
  
  it("should create gameover title image", function()
    create_game_over_ui.evaluate()
    
    assert.stub(create_gameover_title_image.evaluate).was_called()
  end)
  
  it("should show ads when sprite animate ended", function()
    create_game_over_ui.evaluate()
    
    assert.stub(show_ads.evaluate).was_called()
  end)
  
  it("should hide score_text", function()
    -- when
    create_game_over_ui.evaluate()
    -- then
    assert.are.False(score_text.isVisible)
  end)
  
  it("should create ending_score_text", function()
    -- when
    create_game_over_ui.evaluate()
    -- then
    assert.stub(create_ending_score_text.evaluate).was_called()
  end)
  
  it("should evalaute check_high_score", function()
    -- when
    create_game_over_ui.evaluate()
    -- then
    assert.stub(check_high_score.evaluate).was_called()
  end)
  
  it("should show ending_score_text", function()
    -- when
    create_game_over_ui.evaluate(event)
    -- then
    assert.stub(create_ending_high_score_text.evaluate).was_called()
  end)
  
end)