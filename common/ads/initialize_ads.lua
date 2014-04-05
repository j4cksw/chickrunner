initialize_ads = {}

ads = ads or require("ads")

function initialize_ads.evaluate()
  ads.init("admob", "a152fcd578c6fa7")
end

return initialize_ads