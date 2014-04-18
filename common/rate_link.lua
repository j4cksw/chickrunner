rate_link = {}

function rate_link.open()
  if system.getInfo("platformName") == "Android" then
    system.openURL("market://details?id=com.kongdev.chickrunner")
  elseif system.getInfo("platformName") == "iPhone OS" then
    system.openURL("itms-apps://ax.itunes.apple.com/WebObjects/MZStore.woa"
      .. "/wa/viewContentsUserReviews?"
      .. "type=Purple+Software&id="
      .. "860430668")
  end
end

return rate_link