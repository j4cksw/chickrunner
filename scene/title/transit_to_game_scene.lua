transit_to_game_scene = {}

hide_ads = hide_ads or require("common.ads.hide_ads")
storyboard = storyboard or require("storyboard")

function transit_to_game_scene.evaluate()
  hide_ads.evaluate()
  storyboard.gotoScene("scene.game.game_scene",{
    effect = "fade",
    time = 500})
end

return transit_to_game_scene