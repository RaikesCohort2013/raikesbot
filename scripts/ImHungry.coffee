# Description:
#  Uses Tobin's magical web scraping to get UNL Housing's food menu
#
# Commands:
#  "What's for (breakfast|lunch|dinner)?"
#     *punctuation is optional
#
# Authors:
#  JSON: Tobin Brown
#  Script: Michael Jensen

module.exports = (robot) ->
   robot.hear /what[']*s for ?([\w]+)\?*$/i, (msg) ->
      url = "http://brobin.me/tools/api/food.php?meal=#{ msg.match[1].trim() }"
      meal = msg.match[1].trim()
      msg.http("#{ url }").get() (err, res, body) ->
         msg.send "Couldn't access the menu!" if err
         data = JSON.parse(body)
         foods = data.items

         foodList = "#{ foods[index].trim() for index of foods }"

         text = "#{meal} today at Selleck is: \n #{foodList}"

         msg.send text
