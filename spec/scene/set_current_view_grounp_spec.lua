describe("set_current_view_group", function ( ... )
	local set_current_view_group

	setup(function ( ... )
		set_current_view_group = require("scene.set_current_view_group")
	end)

	it("set current_view_group as a given view", function ( ... )
		-- given
		local view = {}
		-- when
		set_current_view_group.evaluate(view)
		-- then
		assert.are.equal(current_view_group, view)
	end)
end)