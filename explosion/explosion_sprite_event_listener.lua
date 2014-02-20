explosion_sprite_event_listener = {}

explosion_queue = explosion_queue or require("explosion.explosion_queue")

function explosion_sprite_event_listener.evaluate(event)
  if event.phase == "ended" then
    table.remove(explosion_queue, 1)
    display.remove(event.target)
    --print("Removed explosion sprite")
  end
end

return explosion_sprite_event_listener