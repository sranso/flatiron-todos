class Birthday < ActiveRecord::Base

  attr_reader :time, :bday_month, :bday_day, :bday_year

  def initialize
    @time = Time.now.strftime("%D")
    @bday_month = 10
    @bday_day = 03
    @bday_year = 1988
  end

  def yes_or_no?
    if /10\/03*/.match(@time)
      "Yes! You just turned #{age}!"
    else
      "No. But it will be your birthday in #{months_until_birthday} months and #{days_until_birthday} days!"
    end
  end

  def age
    @time[-2..-1].to_i + (2000 - @bday_year)
  end

  def months_until_birthday
    this_month = Time.now.strftime("%m").to_i
    if (this_month - @bday_month) > 0
      months_until_birthday = 12 - (this_month - @bday_month)
    else
      months_until_birthday = (this_month - @bday_month).abs
    end
  end

  def days_until_birthday
    this_day = Time.now.strftime("%d").to_i
    if (this_day - @bday_day) > 0
      days_until_birthday = this_day - @bday_day
    else
      days_until_birthday = (this_day - @bday_day).abs
    end
  end

end