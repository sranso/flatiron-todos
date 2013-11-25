########################
# NYC PIGEON ORGANIZER #
########################
require 'debugger'
# Start with the following collected data on NYC pigeons.

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms .K"],
    :white => ["Queenie", "Andrew", "Ms .K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms .K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms .K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

# Iterate over the hash above collecting each pigeon by name and insert it
# as the key of a new hash where each name holds the attributes for that bird. 
# Your output should match the hash below:

new_pigeon_data = {}
pigeon_data.each do |attribute, attribute_hash| # attribute = color gender lives, attribute_hash = purple {} grey {} etc
  attribute_hash.each do |characteristic, pigeons| # pigeons = ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"], ["Queenie", "Ms .K"]
    pigeons.each do |pigeon_name|
      new_pigeon_data[pigeon_name] = {} unless new_pigeon_data[pigeon_name]
      new_pigeon_data[pigeon_name][:color] = [] unless new_pigeon_data[pigeon_name][:color]
      if attribute == :color
        new_pigeon_data[pigeon_name][:color] << characteristic
      else
        new_pigeon_data[pigeon_name][attribute] = characteristic
      end
      # do work in here, at the deepest level of our iteration, how would we solve this
    end
  end
  new_pigeon_data
end
p new_pigeon_data

