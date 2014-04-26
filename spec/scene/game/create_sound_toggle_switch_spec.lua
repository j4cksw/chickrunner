describe("create_sound_toggle_button", function()
  local create_sound_toggle_switch

  local fake_image_sheet = {}
  
  local fake_switch = {}
  
  setup(function()
    options = {
      is_sound_enabled = false
    }
    
    graphics = {
      newImageSheet = function()
        return fake_image_sheet
      end
    }
    spy.on(graphics, "newImageSheet")

    widget = {
      newSwitch = function()
        return fake_switch
      end
    }
    spy.on(widget, "newSwitch")
    stub(fake_switch, "addEventListener")

    create_sound_toggle_switch = require("scene.game.create_sound_toggle_switch")
  end)

  it("should create sound toggle image sheet", function()
    create_sound_toggle_switch.evaluate()

    assert.stub(graphics.newImageSheet).was_called_with(
      "img/ui/sound_button.png", {
        width=69,
        height=63,
        numFrames=4
      })
  end)

  it("should create sound toggle switch", function()
    create_sound_toggle_switch.evaluate()

    assert.stub(widget.newSwitch).was_called_with({
      x = 680,
      y = 220,
      style = "checkbox",
      sheet = fake_image_sheet,
      width=69,
      height=63,
      frameOff=1,
      frameOn=3,
      onRelease=onSoundSwitchReleased,
      initialSwitchState=false
    })
  end)
end)