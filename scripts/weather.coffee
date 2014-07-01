# Gets the weather and diplays that shit

module.exports = (robot) ->

  robot.hear /.*weather.*/i, (msg) ->
    msg.http("http://query.yahooapis.com/v1/public/yql/jonathan/weather?format=json&zip=68508")
      .get() (err, res, body) ->
        results = JSON.parse(body).query.results.channel
        condition = results.item.condition
        forecast = results.item.forecast[0]
        location = results.location
        response = 'It is currently ' + condition.temp + '° and ' + condition.text + ' in ' + location.city + ', ' + location.region + '.\nToday\'s Forecast: ' + forecast.high + '° high, ' + forecast.low + '° low, ' + forecast.text
        msg.send response