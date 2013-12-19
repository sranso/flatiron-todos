class Birthday < ActiveRecord::Base

  attr_reader :this_month, :this_day, :this_year, :bday_month, :bday_day, :bday_year

  def initialize #(time)
    @this_month = Time.now.month #time.month
    @this_day = Time.now.day #time.day
    @this_year = Time.now.year #time.year
    @bday_month = 10
    @bday_day = 03
    @bday_year = 1988
  end

  def yes_or_no?
    if @this_month == @bday_month && @this_day == @bday_day
      "Yes! She just turned #{age}!"
    else
      "No. But it will be her birthday in #{months_until_birthday} months and #{days_until_birthday} days!"
    end
  end

  def age
    @this_year - @bday_year
  end

  def months_until_birthday
    if (@this_month - @bday_month) >= 0
      @months_until_birthday = 12 - (@this_month - @bday_month)       
    else
      @months_until_birthday = (@this_month - @bday_month).abs
    end
  end

  def days_in_this_month
    case @this_month
    when 1 || 3 || 5 || 7 || 8 || 10 || 12
      days_in_this_month = 31
    when 2
      days_in_this_month = 28
    when 4 || 6 || 9 || 11
      days_in_this_month = 30
    end
  end

  def days_until_birthday
    if (@this_day - @bday_day) >= 0
      @days_until_birthday = @this_day - @bday_day
    else
      @days_until_birthday = (@this_day - @bday_day).abs
    end
  end

end