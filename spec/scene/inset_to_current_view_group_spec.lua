describe("insert_to_current_view_group", function ( ... )
	local insert_to_current_view_group

	local target = {}

	setup(function ( ... )
		current_view_group = {}
		stub(current_view_group, "insert")

		insert_to_current_view_group = require("scene.insert_to_current_view_group")
	end)

	it("Evaluate current_view_group:insert with given object", function ( ... )
		-- when
		insert_to_current_view_group.evaluate(target)
		-- then
		assert.stub(current_view_group.insert).was_called_with(current_view_group, target)
	end)
end)