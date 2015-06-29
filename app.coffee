
requestAsync = require "request-promise"
chalk = require "chalk"
console = require "better-console"
_ = require "lodash"
moment = require "moment"
Table = require "cli-table"

config = require "./config"
windDirection = require "./wind_direction_icons"
weatherCode = require "./weather_status_codes"
weatherIcon = require "./weather_status_icons"

class WeatherGetter

  get: ->
    query = "#{config.url}?key=#{config.key}&q=shanghai&num_of_days=3&format=json&lang=zh"

    # table = new Table(
    #   head: ['TH 1 label', 'TH 2 label']
    # , colWidths: [100, 200]
    # )
     
    # # // table is an Array, so you can `push`, `unshift`, `splice` and friends 
    # table.push(
    #     ['First valuefeafeafeaef\nfafa', 'Second value']
    #   , ['First value', 'Second value']
    # );
     
    # console.log(table.toString());

    requestAsync query
    .then (rawData) =>
      data = JSON.parse rawData
      return @failureHandler data if data.error isnt undefined
      {current_condition, request, weather} = data.data

      # City infomation
      console.log "#{request[0].query} 当前天气"

      # Current weather
      icon = @getIcon current_condition[0].weatherCode
      text = @formatCurrentDetail current_condition[0]
      @printSingle icon, text

      # Weather Forecast
      console.log "未来三天天气预报"
      table = new Table
        head: ['Morning', 'Afternoon', 'Evening']
        colWidths: [40, 40, 40]

      dayWeather = []
      [1, 2, 3].forEach (dayIndex) =>
        result = []
        dayWeather[dayIndex] = []
        dayTemp = weather[dayIndex - 1].hourly
        icon2 = @getIcon dayTemp[2].weatherCode
        text2 = @formatForecastDetail dayTemp[2]
        # @printSingle icon2, text2
        result.push @getSingle icon2, text2

        icon4 = @getIcon dayTemp[4].weatherCode
        text4 = @formatForecastDetail dayTemp[4]
        # @printSingle icon4, text4
        result.push @getSingle icon4, text4

        icon6 = @getIcon dayTemp[6].weatherCode
        text6 = @formatForecastDetail dayTemp[6]
        # @printSingle icon6, text6
        result.push @getSingle icon6, text6

        dayWeather[dayIndex].push @getSingle @getIcon dayTemp[2].weatherCode, @formatForecastDetail dayTemp[2]
        dayWeather[dayIndex].push @getSingle @getIcon dayTemp[4].weatherCode, @formatForecastDetail dayTemp[4]
        dayWeather[dayIndex].push @getSingle @getIcon dayTemp[6].weatherCode, @formatForecastDetail dayTemp[6]

        table.push result

      console.log table.toString()

    .catch (ex) =>
      @failureHandler ex


  getSingle: (icon, text) ->
    result = _.zip icon, text
    return result.join "\n"

  printSingle: (icon, text) ->
    result = _.zip icon, text
    result.forEach (line) ->
      console.log line[0], line[1]

  getIcon: (code) ->
    return weatherIcon[weatherCode[code]]

  formatCurrentDetail: (content) ->
    result = []
    result.push content.lang_zh[0].value
    result.push "气温: #{content.temp_C}°C | #{content.FeelsLikeC}°C"
    result.push "风向: #{windDirection[content.winddir16Point]} #{content.windspeedKmph} km/h"
    result.push "可视: #{content.visibility}km 湿度: #{content.humidity}%" 
    result.push "降水: #{content.precipMM}mm"
    return result

  formatForecastDetail: (content) ->
    result = []
    result.push content.lang_zh[0].value
    result.push "气温: #{content.tempC}°C | #{content.FeelsLikeC}°C"
    result.push "风向: #{windDirection[content.winddir16Point]} #{content.windspeedKmph} km/h"
    result.push "可视: #{content.visibility}km 湿度: #{content.humidity}%" 
    result.push "降水: #{content.chanceofrain}% | #{content.precipMM}mm"
    return result

  failureHandler: (data) ->
    console.error "======================"
    console.error "Error response:"

    if data.statusCode is 403
      console.error "Invalid Key!"
    else if data.error isnt undefined and data.error.msg isnt undefined
      console.error data.error.msg
    else
      console.error data

    console.error "======================"


module.exports = new WeatherGetter()