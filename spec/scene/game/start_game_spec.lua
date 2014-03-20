describe("start_game", function()
  local start_game
  
  setup(function()
    initialize_score = {}
    stub(initialize_score, "evaluate")
    
    create_chasing_explosion = {}
    stub(create_chasing_explosion, "evaluate")
    
    chick_jump = {}
    stub(chick_jump, "evaluate")

    update_stage = {}
    stub(update_stage, "evaluate")
    
    create_explosion_core = {}
    stub(create_explosion_core, "evaluate")
    
    play_bgm = {}
    stub(play_bgm, "evaluate")
    
    Runtime = {}
    stub(Runtime, "addEventListener")
    stub(Runtime, "removeEventListener")
    
    start_chasing_explosion_timer = {}
    stub(start_chasing_explosion_timer, "evaluate")
    
    generate_obstacle = {}
    stub(generate_obstacle, "evaluate")
    
    start_game = require("scene.game.start_game")
  end)
  
  
  it("Evaluate play_bgm in enterScene", function()
   -- when
   start_game.evaluate()
   -- then
   assert.stub(play_bgm.evaluate).was_called()
  end)
  
  it("Evaluate initialize_score in enterScene", function()
   -- when
   start_game.evaluate()
   -- then
   assert.stub(initialize_score.evaluate).was_called()
  end)
  
  it("Evaluate create_chasing_explosion in enterScene", function()
   -- when
   start_game.evaluate()
   -- then
   assert.stub(create_chasing_explosion.evaluate).was_called()
  end)
  
  it("Evaluate start_chasing_explosion_timer", function()
   -- when
   start_game.evaluate()
   -- then
   assert.stub(start_chasing_explosion_timer.evaluate).was_called()
  end)
  
  it("Evaluate create_explosion_core in enterScene", function()
   -- when
   start_game.evaluate()
   -- then
   assert.stub(create_explosion_core.evaluate).was_called()
  end)
  
  it("Add enterFrame event lister to Runtime in enterScene", function ( ... )
    -- when
    start_game.evaluate()
    -- then
    assert.stub(Runtime.addEventListener).was_called_with(Runtime, "enterFrame", update_stage.evaluate)
  end)
  
  it("Add tap event listener to Runtime in enterScene", function()
   -- when
   start_game.evaluate()
   -- then
   assert.stub(Runtime.addEventListener).was_called_with(Runtime, "tap", chick_jump.evaluate)
  end)
end)