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

    insert_to_current_view_group = {}
    stub(insert_to_current_view_group, "evaluate")
    
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

  it("Create game title image", function()
    -- when
    title_scene:createScene(event)
    -- then
    assert.stub(display.newImage).was_called_with("img/screen/title/logo.png")
  end)

  it("Set x of title image to center of screen", function()
    -- when
    title_scene:createScene(event)
    -- then
    assert.are.equal(fake_logo.x, display.contentCenterX)
  end)

  it("Set y of title image to 200", function()
    -- when
    title_scene:createScene(event)
    -- then
    assert.are.equal(fake_logo.y, 370)
  end)

  it("Insert title image to current view group", function()
    -- when
    title_scene:createScene(event)
    -- then
    assert.stub(insert_to_current_view_group.evaluate).was_called_with(fake_logo)
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