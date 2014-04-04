describe("create_ready_first_text", function()
  local create_ready_first_text
  
  local fake_first_text = {"fake_first_text"}
  
  setup(function()
    display = {
      contentCenterX=600,
      newText = function(text)
        return fake_first_text
      end
    }
    spy.on(display, "newText")
    
    get_fontname_by_platform = {
      evaluate = function()
        return fontname
      end
    }
    
    game_scene_config = {
      ready_first_text_y_offset = 200,
      ready_first_text_size = 32
    }
    
    create_ready_first_text = require("scene.game.create_ready_first_text")
  end)
  
  it("Create 'to' text under tap button", function()
    -- given
    local pivot = { y=500 }
    -- when
    create_ready_first_text.evaluate(pivot)
    -- then
    assert.stub(display.newText)
      .was_called_with("TO",
       display.contentCenterX,
       pivot.y+game_scene_config.ready_first_text_y_offset,
       fontname, 
       game_scene_config.ready_first_text_size)
  end)
  
  it("Return a text display object", function()
    -- given
    local pivot = { y=500 }
    -- when
    local result = create_ready_first_text.evaluate(pivot)
    -- then
    assert.are.equal(result, fake_first_text)
  end)
end)