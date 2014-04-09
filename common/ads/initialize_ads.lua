initialize_ads = {}

ads = ads or require("ads")

function initialize_ads.evaluate()
  ads.init("admob", "a1534511cd248dc")
end

return initialize_ads