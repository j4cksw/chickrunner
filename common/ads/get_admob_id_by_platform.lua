get_admob_id_by_platform = {}

function get_admob_id_by_platform.evaluate()
  if system.getInfo("platformName") == "Android" then
    return "a1534511cd248dc"
  elseif system.getInfo("platformName") == "iPhone OS" then
    return "a15350a7a1d099c"
  end
end

return get_admob_id_by_platform