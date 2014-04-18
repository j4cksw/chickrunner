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
    create_rate_it_button = require("scene.title.create_rate_it_button")
  end)

  it("should create rate-it button from widget", function()
    create_rate_it_button.evaluate()

    assert.stub(widget.newButton).was_called_with({
      id = "rate-it",
      defaultFile = "img/ui/rate.png",
    })
  end)
end)