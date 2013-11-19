holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :forth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

#1. How would you access the second supply for the fourth_of_july?

holiday_supplies[:summer][:fourth_of_july][1]

# 2. Add a supply to a Winter holiday.

holiday_supplies[:winter][:christmas] << "Tree"

# 3. Add a supply to memorial day.

holiday_supplies[:spring][:memorial_day] << "Picnics"

# 4. Add a new holiday to any season with supplies.

holiday_supplies[:winter][:hannukah] = ["Menorah", "Dreidel"]

# 5. Write a method to collect all Winter supplies from all the winter holidays.

def winter_supplies holiday_supplies
  all_winter_supplies = []
  holiday_supplies[:winter].each do |holiday, supplies|
    supplies.each do |item|
      all_winter_supplies << item
    end
  end
  all_winter_supplies
end

# 6. Write a loop to list out all the supplies you have for each holiday and the season.
# Winter:
#   Christmas: Lights and Wreath
#   New Years: Party Hats

holiday_supplies.each do |season, holidays|
  puts "#{season.capitalize}:"
  holidays.each do |holiday, supplies|
    print " #{holiday.capitalize}: "
    puts supplies.join(" and ")
  end
end

#7. Write a method to collect all holidays with BBQ.

def bbq?(holiday_supplies)
  bbq_holidays = []
  holiday_supplies.each do |season, holidays|
    holidays.each do |holiday, supplies|
      if supplies.include?("BBQ")
        bbq_holidays << holiday
      end
    end
  end
  bbq_holidays
end