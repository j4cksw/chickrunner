describe("explode_before_start", function()
  local explode_before_start
  
  setup(function()
    Runtime = {}
    stub(Runtime, "removeEventListener")
    
    start_game = {}
    stub(start_game, "evaluate")
    
    box_explosion_sound = {}
    
    chick = {}
    stub(chick, "setSequence")
    stub(chick, "play")
    
    explode_before_start = require("scene.game.explode_before_start")
  end)
  
  it("Remove tap event listener", function()
    -- when
   explode_before_start.evaluate()
   -- then
   assert.stub(Runtime.removeEventListener).was_called_with(Runtime, "tap", explode_before_start.evaluate)
  end)
  
  it("Play audio and add start_game to oncomplete", function()
    -- when
    explode_before_start.evaluate()
    -- then
    assert.stub(audio.play).was_called_with(box_explosion_sound, {channel=3} )
  end)
  
  it("Stop chick_ready_sound")
  
  it("Evaluate destroy_all_obstacles")
  
  it("Set chick to run state", function()
    -- when
    explode_before_start.evaluate()
    -- then
    assert.stub(chick.setSequence).was_called_with(chick, "run")
  end)
  
  it("Play chick animate", function()
    -- when
    explode_before_start.evaluate()
    -- then
    assert.stub(chick.play).was_called_with(chick)
  end)
  
  it("start timer for actual start game", function()
    -- when
    explode_before_start.evaluate()
    -- then
    assert.stub(timer.performWithDelay).was_called_with(100, start_game.evaluate)
  end)
end)