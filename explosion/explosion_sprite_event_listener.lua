explosion_sprite_event_listener = {}

explosion_queue = explosion_queue or require("explosion.explosion_queue")

function explosion_sprite_event_listener.evaluate(event)
  if event.phase == "ended" then
    display.remove(event.target)
  end
end

return explosion_sprite_event_listener