describe("toggle_sound", function()
  local toggle_sound

  setup(function()
    toggle_sound = require("scene.game.audio.toggle_sound")
  end)

  before_each(function()
    unmute_all_channel = {}
    stub(unmute_all_channel, "evaluate")

    mute_all_channel = {}
    stub(mute_all_channel, "evaluate")

    save_options = {}
    stub(save_options, "evaluate")
  end)

  it("should unmute audio when swith state is true", function()
    toggle_sound.evaluate(true)

    assert.stub(unmute_all_channel.evaluate).was_called()
  end)

  it("should not call mute audio when switch state is true", function()
    toggle_sound.evaluate(true)

    assert.stub(mute_all_channel.evaluate).was_not_called()
  end)

  it("should set current state to options table", function()
    options = {
      sound_initial_state=false
    }

    toggle_sound.evaluate(true)

    assert.are.equal(options.sound_initial_state, true)
  end)

  it("should save options when switch state is true", function()
    toggle_sound.evaluate(true)

    assert.stub(save_options.evaluate).was_called()
  end)

  it("should not unmute audio when swith state is false", function()
    toggle_sound.evaluate(false)

    assert.stub(unmute_all_channel.evaluate).was_not_called()
  end)

  it("should call mute audio when switch state is false", function()
    toggle_sound.evaluate(false)

    assert.stub(mute_all_channel.evaluate).was_called()
  end)

  it("should set current state to options table", function()
    options = {
      sound_initial_state=true
    }

    toggle_sound.evaluate(false)

    assert.are.equal(options.sound_initial_state, false)
  end)

  it("should save options when switch state is false", function()
    toggle_sound.evaluate(false)

    assert.stub(save_options.evaluate).was_called()
  end)
end)