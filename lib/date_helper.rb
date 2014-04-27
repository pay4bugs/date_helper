require 'date'

module DateHelper
  VERSION = "1.1.0"
end

class Date

  # return array with one entry for each month between date1 and date2 (inclusive)
  def self.months_between(date1, date2)
    months = []
    if date2 < date1
      start_date = Date.civil(date2.year, date2.month, 1)
      end_date = Date.civil(date1.year, date1.month, 1)
    else
      start_date = Date.civil(date1.year, date1.month, 1)
      end_date = Date.civil(date2.year, date2.month, 1)
    end

    while (start_date < end_date)
      months << start_date
      start_date = start_date >>1
    end

    months << end_date
  end
  
  
  def self.utc_times(dates)
    result = Array.new
    for date in dates
      result << date.to_utc_time
    end
    result
  end
  
  
  # return a Time object at 00:00:00 UTC on the given Date
  def to_utc_time
    Time.utc(self.year,self.month,self.day)
  end
  
  
end