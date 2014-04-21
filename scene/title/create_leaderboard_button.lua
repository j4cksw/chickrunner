create_leaderboard_button = {}

widget = widget or require("widget")

function create_leaderboard_button.evaluate()
  widget.newButton({
    defaultFile="img/ui/rank.png",
    overFile="img/ui/rank_down.png"
  })
end

return create_leaderboard_button