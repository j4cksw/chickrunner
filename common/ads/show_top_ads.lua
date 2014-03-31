show_top_ads = {}

ads = ads or require("ads")

function show_top_ads.evaluate()
  ads.show("banner", 
    {
      x = display.screenOriginX,
      y = display.screenOriginY
    })
end

return show_top_ads