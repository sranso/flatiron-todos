class Birthday < ActiveRecord::Base

  attr_reader :time

  def initialize
    @time = Time.now.strftime("%D")
  end

  def yes_or_no?
    if @time == "10/03/88"
      "Yes!"
    else
      "No."
    end
  end

end