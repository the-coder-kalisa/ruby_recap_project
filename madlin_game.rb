def get_day(day)
  case day
  when 'mon'
    'Monday'
  when 'tue'
    'Tuesday'
  when 'wed'
    'Wednesday'
  when 'thu'
    'Thursday'
  when 'fri'
    'Friday'
  when 'sat'
    'Saturday'
  when 'sun'
    'Sunday'
  end
end

puts(get_day_name('mon'))
