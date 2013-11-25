########################
# NYC PIGEON ORGANIZER #
########################

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
#get name of each pigeon, add them as a key with a value of {} to new_pigeon_data
pigeon_data.each do |key, value| # key = color gender lives, value = {purple grey white brown} etc
  value.each do |attribute, name_array| # attribute = purple, name_array = ["Theo", "Peter Jr.", "Lucky"] etc
    name_array.each do |name|
      new_pigeon_data[name] = {} unless new_pigeon_data[name]
      new_pigeon_data[name][:color] = [] unless new_pigeon_data[name][:color]
      if key == :color
        new_pigeon_data[name][key] << attribute
      else
        new_pigeon_data[name][key] = attribute
      end
    end
  end
  p new_pigeon_data
end


# pigeon_data.each do |attribute, attribute_hash| # attribute = color gender lives, attribute_hash = purple {} grey {} etc
#   if attribute == :gender
#     attribute_hash.each do |maleorfemale, pigeons| # pigeons = ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"], ["Queenie", "Ms .K"]
#       pigeons.each do |pigeon|
#         new_pigeon_data[pigeon] = {}
#       end
#     end
#     new_pigeon_data
#   end # new_pigeon_data = {"Alex"=>{}, "Theo"=>{}, "Peter Jr."=>{}, "Andrew"=>{}, "Lucky"=>{}, "Queenie"=>{}, "Ms .K"=>{}}
#   attribute_hash.each do |key, value| # key = purple male subway etc, value = pigeon name array
#     value.each do |pigeon1|
#       if pigeon1 == new_pigeon_data[pigeon]
#         new_pigeon_data[pigeon][attribute] = key
#       end
#     end
#   end
#   new_pigeon_data
# end



