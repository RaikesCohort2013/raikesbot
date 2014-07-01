# Renly is happy, and so should you be.
#
# Clap your hands if you feel unf.
#

module.exports = (robot) ->
  robot.respond /.*clap.*/i, (msg) ->
    msg.send "http://quizzicalllama.files.wordpress.com/2013/09/clap.gif"