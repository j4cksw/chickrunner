get_admob_id_by_platform = {}

admob_id_table = admob_id_table or require("config.admob_id_table")

function get_admob_id_by_platform.evaluate()
  return admob_id_table[system.getInfo("platformName")]
end

return get_admob_id_by_platform