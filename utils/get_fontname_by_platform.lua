get_fontname_by_platform = {}

fontname_table = fontname_table or require("config.fontname_table")

function get_fontname_by_platform.evaluate()
	local platform_name = system.getInfo( "platformName" )
	local result = fontname_table[platform_name]
	if not result then
		return fontname_table["Others"]
	else
		return result
	end
end

return get_fontname_by_platform