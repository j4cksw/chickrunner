rate_link = {}

function rate_link.open()
  system.getInfo("platformName")
  system.openURL("market://details?id=com.kongdev.chickrunner")
end

return rate_link