describe("create_logo_image", function()
  local create_logo_image
  
  local fake_logo = {}
  
  setup(function()
    display = {
      contentCenterX=10,
      newImage = function()
        return fake_logo
      end
    }
    spy.on(display, "newImage")
    
    insert_to_current_view_group = {}
    stub(insert_to_current_view_group, "evaluate")
    
    create_logo_image = require("scene.title.create_logo_image")
  end)
  
  it("should create game title image", function()
    create_logo_image.evaluate()
    
    assert.stub(display.newImage).was_called_with("img/screen/title/logo.png")
  end)

  it("Set x of title image to center of screen", function()
    create_logo_image.evaluate()
    
    assert.are.equal(fake_logo.x, 10)
  end)

  it("Set y of title image to 200", function()
    create_logo_image.evaluate()
    
    assert.are.equal(fake_logo.y, 370)
  end)

  it("Insert title image to current view group", function()
    create_logo_image.evaluate()
    
    assert.stub(insert_to_current_view_group.evaluate).was_called_with(fake_logo)
  end)
  
end)