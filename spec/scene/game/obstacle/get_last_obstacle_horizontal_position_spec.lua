describe("get_last_obstacle_horizontal_position", function()
  local get_last_obstacle_horizontal_position
  
  setup(function()
    get_last_obstacle_horizontal_position = require("scene.game.obstacle.get_last_obstacle_horizontal_position")
  end)
  
  it("Return a position of last obstacle element on last obstacle in the queue", function()
    -- given
    local fake_obstacle = {
      { x=5, contentWidth=10 },
      numChildren=1
    }
    obstacle_queue = {
      fake_obstacle
    }
    -- when
    local result = get_last_obstacle_horizontal_position.evaluate()
    -- then
    assert.are.equal(result, 10)
  end)
  
  it("Return a position of last obstacle element on last obstacle in the queue", function()
    -- given
    local fake_obstacle = {
      { x=10, contentWidth=10 },
      numChildren=1
    }
    obstacle_queue = {
      fake_obstacle
    }
    -- when
    local result = get_last_obstacle_horizontal_position.evaluate()
    -- then
    assert.are.equal(result, 15)
  end)
end)