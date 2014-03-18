describe("chick_jump", function()
  local chick_jump
  
  setup(function()
    chick = {
      y = 100,
      jumpCount = 0
    }
    stub(chick, "setLinearVelocity")
    stub(chick, "setSequence")
    stub(chick, "play")
    stub(chick, "addEventListener")
    
    game_scene_config = {
      chick_jump_velocity = -800,
      chick_jump_count_limit = 3
    }
    
    play_chick_jump_sound = {}
    stub(play_chick_jump_sound, "evaluate")
    
    chick_jump = require("scene.chick_jump")
  end)
  
  it("Increase jumpCount", function()
    -- given
    chick.jumpCount = 0
    -- when
    chick_jump.evaluate()
    -- then
    assert.are.equal(chick.jumpCount, 1)
  end)
  
  it("Set linerVelocity to chick_sprite", function()
    -- when
    chick_jump.evaluate()
    -- then
    assert.stub(chick.setLinearVelocity).was_called_with(chick, 0, game_scene_config.chick_jump_velocity)
  end)
  
  it("Set chick sequence to 'jump'", function()
    -- when
    chick_jump.evaluate()
    -- then
    assert.stub(chick.setSequence).was_called_with(chick, 'jump')
  end)
  
  it("Evalaute chick:play", function()
    -- when
    chick_jump.evaluate()
    -- then
    assert.stub(chick.play).was_called_with(chick)
  end)
  
  it("Evaluate play_chick_jump_sound", function()
    -- when
    chick_jump.evaluate()
    -- then
    assert.stub(play_chick_jump_sound.evaluate).was_called()
  end)
  
end)