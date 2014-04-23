describe("create_sound_toggle_button", function()
  local create_sound_toggle_switch

  setup(function()
    widget = {}
    stub(widget, "newSwitch")
    create_sound_toggle_switch = require("scene.game.create_sound_toggle_switch")
  end)

  it("should create sound toggle switch", function()
    create_sound_toggle_switch.evaluate()

    assert.stub(widget.newSwitch).was_called_with({
      left = 50,
      top = 50,
      style = "checkbox"
    })
  end)
end)