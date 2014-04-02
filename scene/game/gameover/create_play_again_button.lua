create_play_again_button = {}

widget = widget or require("widget")

function create_play_again_button.evaluate()
  play_again_button = widget.newButton({
        id="play_again",
        defaultFile="img/ui/play.png",
      })
  play_again_button.x = display.contentCenterX
  play_again_button.y = 745
end

return create_play_again_button