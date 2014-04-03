describe("create_score_panel", function()
  local create_score_panel

  setup(function()
      create_score_panel_background = {}
      stub(create_score_panel_background, "evaluate")

      create_ending_score_label = {}
      stub(create_ending_score_label, "evaluate")

      create_ending_score_text = {}
      stub(create_ending_score_text, "evaluate")

      create_ending_high_score_text = {}
      stub(create_ending_high_score_text, "evaluate")

      create_score_panel = require("scene.game.gameover.create_score_panel")
  end)
  
  it("should create score panel background", function()
    create_score_panel.evaluate()
    
    assert.stub(create_score_panel_background.evaluate).was_called()
  end)
  
  it("should create ending score label", function()
    create_score_panel.evaluate()
    
    assert.stub(create_ending_score_label.evaluate).was_called()
  end)
  
  it("should create ending_score_text", function()
    create_score_panel.evaluate()
    
    assert.stub(create_ending_score_text.evaluate).was_called()
  end)
  
  it("should show ending_highscore_text", function()
    create_score_panel.evaluate()
    
    assert.stub(create_ending_high_score_text.evaluate).was_called()
  end)
  
end)