describe("create_background_image", function()
  local create_background_image
  local background_image = {}
  
  setup(function()
    display = {
      newImage = function()
        return background_image
      end,
      contentCenterX = 128,
      contentCenterY = 128
    }
    spy.on(display, "newImage")
    
    insert_to_current_view_group = {}
    stub(insert_to_current_view_group, "evaluate")
  
    create_background_image = require("scene.create_background_image")
  end)
  
  it("Create background image", function()
    -- when
    create_background_image.evaluate()
    -- then
    assert.stub(display.newImage).was_called_with("img/background/bg.png")
  end)
  
  it("Add to current viewgroup", function()
    -- when
    create_background_image.evaluate()
    -- then
    assert.stub(insert_to_current_view_group.evaluate).was_called_with(background_image)
  end)
  
  it("Set x to center", function()
    -- when
    create_background_image.evaluate()
    -- then
    assert.are.equal(background_image.x, display.contentCenterX)
  end)
  
  it("Set y to center", function()
    -- when
    create_background_image.evaluate()
    -- then
    assert.are.equal(background_image.y, display.contentCenterY)
  end)
end)