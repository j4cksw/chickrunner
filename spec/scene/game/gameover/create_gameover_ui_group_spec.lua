describe("create_gameover_ui_group", function()
  local create_gameover_ui_group
  
  setup(function()
    display = {}
    stub(display, "newGroup")
    create_gameover_ui_group = require("scene.game.gameover.create_gameover_ui_group")
  end)
  
  it("should create new group from display", function()
    create_gameover_ui_group.evaluate()
    
    assert.stub(display.newGroup).was_called()
  end)
  
  it("should set to global variable 'gameover_ui_group'")
  
  it("should add gameover title image to group")
  
  it("should add score panel background to group")
  
end)