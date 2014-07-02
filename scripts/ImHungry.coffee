# Description:
#  Uses Tobin's magical web scraping to get UNL Housing's food menu
#
# Commands:
#  "What's for (breakfast|lunch|dinner)?"
#     *punctuation is optional
#
# Authors:
#  JSON: Tobin Brown
#  Script: Michael Jensen / Tobin Brown

module.exports = (robot) ->
   robot.hear /what[']*s for ?([\w]+)\?*$/i, (msg) ->
      meal = msg.match[1].trim()
      url = "http://brobin.me/tools/api/food.php?meal=#{ meal }"
      msg.http("#{ url }").get() (err, res, body) ->

         msg.send "Couldn't access the menu!" if err

         data = JSON.parse(body)
         foods = data.items

         foodList = "#{ foods[index].trim().replace(/[^a-zA-Z ]/g, "") for index of foods } \n"

         text = "#{meal} today at Selleck is: \n #{foodList}"

         msg.send text
