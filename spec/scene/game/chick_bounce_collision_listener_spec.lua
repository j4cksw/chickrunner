describe("chick_bounce_collison_listener", function()
  local chick_bounce_collision_listener
  
  local event
  setup(function()
  
    event = {
      phase = "began",
      other = {
        type = "ground"
      }
    }
    
    chick = {}
    stub(chick, "setSequence")
    stub(chick, "play")
    stub(chick, "setLinearVelocity")
    stub(chick, "addEventListener")
    
    restart_game = {
      evaluate = function()end
    }
    
    chick_dead_sequence_ended_listener = {
      evaluate = function()end
    }
    
    chick_bounce_collision_listener = require("scene.game.chick_bounce_collision_listener")
  end)
  
  it("When collision to the ground, Set chick sequence to 'dead'", function()
    -- when
    chick_bounce_collision_listener.evaluate(event)
    -- then
    assert.stub(chick.setSequence).was_called_with(chick, "dead")
  end)
  
  it("When collision to the ground, Play the sequence ", function()
    -- when
    chick_bounce_collision_listener.evaluate(event)
    -- then
    assert.stub(chick.play).was_called_with(chick)
  end)
  
  it("When collide to the ground, Set linear velocity to 0", function()
    -- when
    chick_bounce_collision_listener.evaluate(event)
    -- then
    assert.stub(chick.setLinearVelocity).was_called_with(chick, 0, 0)
  end)
  
  it("When collide to the ground, Add dead_sequence_ended_litener to chick", function()
    -- when
    chick_bounce_collision_listener.evaluate(event)
    -- then
    assert.stub(chick.addEventListener).was_called_with(chick, "sprite", chick_dead_sequence_ended_listener.evaluate)
  end)
end)