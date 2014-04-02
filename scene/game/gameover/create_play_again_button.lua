create_play_again_button = {}

widget = widget or require("widget")

function create_play_again_button.evaluate()
  play_again_button = widget.newButton({
        id="play_again",
        defaultFile="img/ui/play.png",
      })
end

return create_play_again_button