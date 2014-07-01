# Everyone's favorite outkast lyric. Hands down.
#
#

module.exports = (robot) ->
        robot.respond /.*What'*s cooler than cool?*.*/i, (msg) ->
          msg.send "ICE COLD!"