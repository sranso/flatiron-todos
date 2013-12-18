class Birthday < ActiveRecord::Base

  attr_reader :time

  def initialize
    @time = Time.now.strftime("%D")
  end

  def yes_or_no?
    if /10\/03*/.match(@time)
      age = @time[-2..-1].to_i + (100-88)
      "Yes! You just turned #{age}!"
    else
      "No. Maybe tomorrow it will be..."
    end
  end

end