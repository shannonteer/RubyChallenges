require 'barometer'


puts 'Enter your zip code please'
answer = gets
barometer = Barometer.new(answer)
weather = barometer.measure
tomorrow = Time.now.strftime('%d').to_i + 1

puts "Today's weather forecast for your location is #{weather.current.icon}. The temperature is #{weather.current.temperature.f} degrees, with wind at #{weather.current.wind.to_i} mph."

weather.forecast.each do |forecast|
  day = forecast.starts_at.day
  if day == tomorrow
    weekdayname = "Tomorrow"
  else
    weekdayname = forecast.starts_at.strftime('%A')
  end
  puts weekdayname + " is predicted to be #{forecast.icon} with a low of #{forecast.low.f.to_s} and a high of #{forecast.high.f.to_s}"
end


