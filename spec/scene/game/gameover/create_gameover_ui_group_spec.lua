describe("create_gameover_ui_group", function()
  local create_gameover_ui_group
  
  local fake_ui_group = {"..."}
  
  setup(function()
    display = {
      newGroup = function()
        return fake_ui_group
      end
    }
    spy.on(display, "newGroup")
    
    stub(fake_ui_group, "insert")
    
    create_gameover_ui_group = require("scene.game.gameover.create_gameover_ui_group")
  end)
  
  it("should create new group from display", function()
    create_gameover_ui_group.evaluate()
    
    assert.stub(display.newGroup).was_called()
  end)
  
  it("should set to global variable 'gameover_ui_group'", function()
    create_gameover_ui_group.evaluate()
    
    assert.are.equal(gameover_ui_group, fake_ui_group)
  end)
  
  it("should add gameover title image to group", function()
    gameover_title_image = {"fake_gameover_title_image"}
    
    create_gameover_ui_group.evaluate()
    
    assert.stub(fake_ui_group.insert).was_called_with(fake_ui_group, gameover_title_image)
  end)
  
  it("should add score panel background to group", function()
    score_panel_background = {"fake_score_panel_background"}
    
    create_gameover_ui_group.evaluate()
    
    assert.stub(fake_ui_group.insert).was_called_with(fake_ui_group, score_panel_background)
  end)
  
end)