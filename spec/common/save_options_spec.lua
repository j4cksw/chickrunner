describe("save_options", function()
  local save_options

  setup(function()
    options = {}

    file_saver = {}
    stub(file_saver, "save")
    
    save_options = require("common.save_options")
  end)

  it("should save options table to file", function()
    save_options.evaluate()

    assert.stub(file_saver.save).was_called_with("options", options)
  end)
end)