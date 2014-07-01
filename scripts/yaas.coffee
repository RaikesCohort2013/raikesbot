# YAAAASSSS GAGA YOU LOOK SOOOOOOO BEAUTIFUL YAAAAASSS
# WERK BITCH YAASSSSS
# 
# yaas returns a random "YAASS" gif
#
yaas = [
  "http://thestateofawesome.com/wp-content/uploads/2014/05/fef19ec0_ir11aTpJYy8gp.gif"
, "https://ioneglobalgrind.files.wordpress.com/2014/05/yassslawd.gif?w=697&h=392"
, "http://blog.muchmusic.com/wp-content/uploads/2014/05/giphy6.gif"
, "https://31.media.tumblr.com/d03c9f4e3805c93c0a06baaa6ff00e19/tumblr_n15uanCiwE1t1rvzco1_250.gif"
, "http://img.photobucket.com/albums/v224/JerzeeQT/tumblr_mifr6lBrQI1qdcfx4o1_500.gif"
, "http://media.tumblr.com/37be5fe669152bcbd3a3dd5290397ad8/tumblr_inline_mxh5jtcWSX1rh6cpu.gif"
, "http://media.giphy.com/media/5FyVon622ST84/giphy.gif"
, "http://i.imgur.com/NzWqpyn.gif"
, "http://s1.r29static.com/bin/entry/75a/300x,80/1117573/yass.jpg"
, "http://i111.photobucket.com/albums/n134/LambyToes/tumblr_lsnvfzdHTW1qgt71j.gif"
]
module.exports = (robot) ->
  robot.respond /ya*as/i, (msg) ->
    msg.send msg.random yaas