chick_dead_sequence_ended_listener = {}

function chick_dead_sequence_ended_listener.evaluate(event)

  if event.phase == "ended" then
    --display.remove(score_text)
    score_text.isVisible = false
  end

end

return chick_dead_sequence_ended_listener