
requestAsync = require "request-promise"
chalk = require "chalk"
console = require "better-console"
_ = require "lodash"

config = require "./config"
windDirection = require "./wind_direction_icons"
weatherCode = require "./weather_status_codes"
weatherIcon = require "./weather_status_icons"

class WeatherGetter

  get: ->
    query = "#{config.url}?key=#{config.key}&q=shanghai&num_of_days=3&format=json&lang=zh"

    requestAsync query
    .then (rawData) =>
      data = JSON.parse rawData
      return @failureHandler data if data.error isnt undefined
      {current_condition, request, weather} = data.data
      console.info "Weather for city: #{request[0].query}"

      icon = @getIcon current_condition[0].weatherCode
      text = @formatCurrentDetail current_condition[0]
      @printSingle icon, text 

    .catch (ex) =>
      @failureHandler ex

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