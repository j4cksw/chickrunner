get_fontname_by_platform = {}

fontname_table = fontname_table or require("config.fontname_table")

function get_fontname_by_platform.evaluate()
	local platform_name = system.getInfo( "platformName" )

	return fontname_table[platform_name]
end

return get_fontname_by_platform