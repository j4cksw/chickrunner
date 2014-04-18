initialize_ads = {}

ads = ads or require("ads")
get_admob_id_by_platform = get_admob_id_by_platform or require("common.ads.get_admob_id_by_platform")

function initialize_ads.evaluate()
  ads.init("admob", get_admob_id_by_platform.evaluate())
end

return initialize_ads