create_text = {}

get_fontname_by_platform = get_fontname_by_platform or require("utils.get_fontname_by_platform")

function create_text.evaluate(text, x, y, size)
  return display.newText(text, x, y, get_fontname_by_platform.evaluate(), size)
end

return create_text