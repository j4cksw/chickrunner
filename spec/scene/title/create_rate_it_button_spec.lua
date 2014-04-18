describe("create_rate_it_button", function()
  local create_rate_it_button

  local fake_button = {}

  setup(function()
    widget = {
      newButton = function()
        return fake_button
      end
    }
    spy.on(widget, "newButton")
    
    insert_to_current_view_group = {}
    stub(insert_to_current_view_group, "evaluate")
    
    create_rate_it_button = require("scene.title.create_rate_it_button")
  end)

  it("should create rate-it button from widget", function()
    create_rate_it_button.evaluate()

    assert.stub(widget.newButton).was_called_with({
      id = "rate-it",
      defaultFile = "img/ui/rate.png",
    })
  end)
  
  it("should set x to 583", function()
    create_rate_it_button.evaluate()
    
    assert.are.equal(fake_button.x, 583)
  end)
  
  it("should set y to 1161", function()
    create_rate_it_button.evaluate()
    
    assert.are.equal(fake_button.y, 1161)
  end)
  
  it("should insert to current view group", function()
    create_rate_it_button.evaluate()
    
    assert.stub(insert_to_current_view_group.evaluate).was_called_with(fake_button)
  end)
end)