describe("create_text", function()
  local create_text
  
  local fontname = "xface"
  
  local fake_text = {"..."}
  
  setup(function()
    get_fontname_by_platform = {
      evaluate = function()
        return fontname
      end
    }
    
    display = {
      newText = function()
        return fake_text
      end
    }
    spy.on(display, "newText")
    
    create_text = require("common.text.create_text")
  end)
  
  it("should create text with parameters", function()
    create_text.evaluate("text", 55, 150, 32)
    
    assert.stub(display.newText).was_called_with("text",
      55,
      150,
      "xface",
      32)
  end)
  
  it("should return fake text", function()
    local result = create_text.evaluate("text", 55, 150, 32)
    
    assert.are.equal(result, fake_text)
  end)
  
end)