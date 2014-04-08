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
    stub(storyboard, "gotoScene")

    widget = {
      newButton = function()
        return fake_button
      end
    }
    spy.on(widget, "newButton")

    display = {
      contentCenterX = 10,
      contentCenterY = 20,
      newImage = function()
        return fake_logo
      end
    }
    spy.on(display, "newImage")

    set_current_view_group = {}
    stub(set_current_view_group, "evaluate")

    create_background_image = {}
    stub(create_background_image, "evaluate")

    insert_to_current_view_group = {}
    stub(insert_to_current_view_group, "evaluate")

    hide_ads = {}
    stub(hide_ads, "evaluate")
    
    play_ui_button_sound = {}
    stub(play_ui_button_sound, "evaluate")

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

  it("Create start button", function()
    -- when
    title_scene:createScene(event)
    -- then
    assert.stub(widget.newButton).
      was_called_with({
        id="start",
        defaultFile="img/ui/start.png",
        onPress=play_ui_button_sound.evaluate,
        onRelease=title_scene.go_to_game_scene
      })
  end)

  it("Set start button on centerr of screen", function()
    -- when
    title_scene:createScene(event)
    -- then
    assert.are.equal(fake_button.x, display.contentCenterX)
    assert.are.equal(fake_button.y, 740)
  end)

  it("should hide ads when push start button", function()
    title_scene.go_to_game_scene()

    assert.stub(hide_ads.evaluate).was_called()
  end)

  it("Go to game scene when push start button", function()
    -- when
    title_scene.go_to_game_scene()
    -- then
    assert.stub(storyboard.gotoScene).was_called_with("scene.game.game_scene",{
      effect = "fade",
      time = 500})
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

end)