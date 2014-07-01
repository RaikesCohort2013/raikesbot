# Description:
#   Retrieves random cat facts.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot catfact - Reply back with random cat fact.
#
# Author:
#   scottmeyer

module.exports = (robot) ->
        robot.respond /.*What'*s cooler than cool?*.*/i, (msg) ->
          msg.send "ICE COLD!"