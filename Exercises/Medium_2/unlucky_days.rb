require 'date'

MONTH = %w(January February March April May June
July August September October November December)

# need to refactor code
def friday_13th(year)
  unlucky_fridays = 0
  1.upto(12) do |month|
    unlucky_fridays += 1 if Date.new(year, month, 13).friday?
  end
  unlucky_fridays
end

def five_fridays(year)

  # initialize a date on the first
  # friday of the year
  date = first_friday(year)

  # make an array of fridays for the particular year
  fridays_this_year = []

  # iterate through each date, adding 7 days
  until date.year > year
    date = date.next_day(7)
    fridays_this_year << date
  end

  # make an array to count the number of fridays that appear
  # in each month
  fridays_in_month = Array([0]*12)
  for friday in fridays_this_year
    fridays_in_month[friday.month-1] += 1
  end

  five_fridays = []
  fridays_in_month.each_with_index do |num_fridays, i|
    if num_fridays == 5
      five_fridays << (i+1)
    end
  end

  # return the months that have five fridays
  get_month_names(five_fridays)
end

# returns the date of the first friday of the year
def first_friday(year)
  day = 1
  date = Date.new(year, 1, day)
  until date.friday?
    day += 1
    date = Date.new(year, 1, day)
  end
  date
end

def get_month_names(month_nums)
  month_nums.map do |m|
    MONTH[m-1]
  end
end

p five_fridays(2016)