push_to_explosion_queue = {}

explosion_queue = explosion_queue or require("explosion.explosion_queue")

function push_to_explosion_queue.evaluate(new_explosion_sprite)
  new_explosion_sprite:addEventListener("sprite", remove_from_table)
  table.insert(explosion_queue, new_explosion_sprite)
end

function remove_from_table(event)
  print("Remove from table")
  if event.phase == "ended" then
    table.remove(explosion_queue, 1)
  end
end

return push_to_explosion_queue