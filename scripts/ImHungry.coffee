# Description:
#	Uses Tobin's magical web scraping to get UNL Housing's food menu
#
# Commands:
#	"What's for (breakfast|lunch|dinner)?"
#		*punctuation is optional
#
# Authors:
#	JSON: Tobin Brown
#	Script: Michael Jensen

module.exports = (robot) ->
	robot.hear /what[']*s for ?([\w]+)\?*$/i, (msg) ->
		getFoods msg, "http://brobin.me/tools/api/food.php?meal=#{ msg.match[1] }", "#{ msg.match[1]}"

getFoods = (msg, url, meal) ->
	msg.http(url).get() (err, res, body) ->
		return msg.send "Couldn't access the menu!" if err
		try
   			data = JSON.parse(body)
   			foods = data.items

   			foodList = for name of food
   				"#{name} \n"

   			text = "#{meal} today at Selleck is: \n #{foodList}"

   			msg.send text

   		catch err
   			return msg.send "Reading the menu is hard sometimes. #sorryNotSorry"
