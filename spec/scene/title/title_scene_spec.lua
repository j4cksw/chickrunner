describe("title_scene", function()
  local title_scene

  local scene = {
    addEventListener = function ( ... )
    -- body
    end,
    view = {}
  }

  local fake_button = {}

  local fake_logo = {}

  setup(function ( ... )
    storyboard = {
      newScene = function ( ... )
        return scene
      end
    }

    display = {
      newImage = function()
        return fake_logo
      end
    }
    spy.on(display, "newImage")

    set_current_view_group = {}
    stub(set_current_view_group, "evaluate")

    create_background_image = {}
    stub(create_background_image, "evaluate")

    create_start_button = {}
    stub(create_start_button, "evaluate")

    create_logo_image = {}
    stub(create_logo_image, "evaluate")

    create_rate_it_button = {}
    stub(create_rate_it_button, "evaluate")
    
    load_title_audio = {}
    stub(load_title_audio, "evaluate")

    play_title_bgm = {}
    stub(play_title_bgm, "evaluate")

    title_scene = require("scene.title.title_scene")
  end)

  it("Set current view", function()
    -- when
    title_scene:createScene(event)
    -- then
    assert.stub(set_current_view_group.evaluate).was_called_with(scene.view)
  end)

  it("Evaluate create background image", function()
    -- when
    title_scene:createScene(event)
    -- then
    assert.stub(create_background_image.evaluate).was_called()
  end)

  it("should create start button", function()
    title_scene:createScene(event)

    assert.stub(create_start_button.evaluate).was_called()
  end)

  it("should create game logo image", function()
    title_scene:createScene(event)

    assert.stub(create_logo_image.evaluate).was_called()
  end)
  
  it("should create rate-it button", function()
    title_scene:createScene(event)
    
    assert.stub(create_rate_it_button.evaluate).was_called()
  end)

  it("should load audio files that use in title", function()
    title_scene:createScene(event)

    assert.stub(load_title_audio.evaluate).was_called()
  end)

  it("should play title bgm", function()
    title_scene:createScene(event)

    assert.stub(play_title_bgm.evaluate).was_called()
  end)
end)