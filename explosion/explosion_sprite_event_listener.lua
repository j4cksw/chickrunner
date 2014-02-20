explosion_sprite_event_listener = {}

function explosion_sprite_event_listener.evaluate(event)
  if event.phase == "ended" then
    display.remove(event.target)
    print("Removed explosion sprite")
  end
end

return explosion_sprite_event_listener