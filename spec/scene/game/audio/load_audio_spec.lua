describe("load_audio", function()
  local load_audio
  
  setup(function()
    audio = {}
    stub(audio, "loadStream")
    stub(audio, "loadSound")
  
    load_audio = require("scene.game.audio.load_audio")
  end)
  
  it("Load background music", function()
    -- when
    load_audio.evaluate()
    -- then
    assert.stub(audio.loadStream).was_called_with("audio/bgsound.mp3")
  end)
  
  it("Load background explosion sound", function()
    -- when
    load_audio.evaluate()
    -- then
    assert.stub(audio.loadSound).was_called_with("audio/booming.mp3")
  end)
  
  it("Load box explosion sound", function()
    -- when
    load_audio.evaluate()
    -- then
    assert.stub(audio.loadSound).was_called_with("audio/bomb_hitbox.mp3")
  end)
  
  it("Load jump_sound", function()
    -- when
    load_audio.evaluate()
    -- then
    assert.stub(audio.loadSound).was_called_with("audio/jump1.mp3")
  end)
  
  it("Load air_jump_sound", function()
    -- when
    load_audio.evaluate()
    -- then
    assert.stub(audio.loadSound).was_called_with("audio/jump2.mp3")
  end)
  
  it("Load chick_ready_sound", function()
    -- when
    load_audio.evaluate()
    -- then
    assert.stub(audio.loadSound).was_called_with("audio/ready_sound.mp3")
  end)
end)