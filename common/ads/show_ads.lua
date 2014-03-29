show_ads = {}

ads = ads or require("ads")

function show_ads.evaluate()
  ads.show("banner", 
      {
        x = display.screenOriginX,
        y = display.screenOriginY + display.viewableContentHeight - 90
      })
end

return show_ads