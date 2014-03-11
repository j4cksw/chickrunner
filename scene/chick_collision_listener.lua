chick_collision_listener = {}

check_chick_landing_condition = check_chick_landing_condition or require("scene.game.chick.check_chick_landing_condition")

function chick_collision_listener.evaluate(event)
  print("Chick other element"..event.otherElement)
  local landing_condition = check_chick_landing_condition.evaluate(event)
  if event.phase == "began" then 
    if event.other.type == "ground" then
      print("Landing")
      chick.jumpCount = 0
      chick:setSequence('run')
      chick:play()
      chick:removeEventListener("collision", chick_collision_listener.evaluate)
    end
  end
end

return chick_collision_listener