chick_ignite = {}

chick_ignite_sprite_listener = chick_ignite_sprite_listener or require("chick.chick_ignite_sprite_listener")

function chick_ignite.evaluate()
  chick:setSequence("ignite")
  chick:play()
  chick:addEventListener("sprite", chick_ignite_sprite_listener.evaluate)
end

return chick_ignite