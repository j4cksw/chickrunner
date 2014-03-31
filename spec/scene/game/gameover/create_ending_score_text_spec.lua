describe("ceate_final_score_text", function()
  local create_ending_score_text

  local fontname = ""

  setup(function()
    get_fontname_by_platform = {
      evaluate = function()
        return fontname
      end
    }

    display = {
      contentCenterX=600,
      newText = function()
        return fake_ending_score_text
      end
    }
    spy.on(display, "newText")

    game_scene_config = {
      ending_score_text_y = 65,
      ending_score_text_size = 125,
      ending_score_text_format = "Distance: %dm"
    }

    create_ending_score_text = require("scene.game.gameover.create_ending_score_text")
  end)

  it("When sprite animate ended show ending_score_text", function()
    -- when
    create_ending_score_text.evaluate()
    -- then
    assert.stub(display.newText).was_called_with("Distance: 100m",
      display.contentCenterX,
      game_scene_config.ending_score_text_y,
      fontname,
      game_scene_config.ending_score_text_size)
  end)

  it("When sprite animate ended set text to global ending_score_text", function()
    -- when
    create_ending_score_text.evaluate()
    -- then
    assert.are.equal(ending_score_text, fake_ending_score_text)
  end)
end)