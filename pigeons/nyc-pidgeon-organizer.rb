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

# ================ BLAKE'S SOLUTION ================

new_pigeon = {} #new container
pigeon_data.each_pair do |key, value|
#.each_pair AKA .each. AND this looks at color gender lives
  value.each_pair do |attribute, name_array|
  #looks at second pair of hashes. first time around, it's purple, []
    name_array.each do |name|
    #looks at name array ["Theo", "Peter Jr.", "Lucky"] etc
      new_pigeon[name] = {} unless new_pigeon[name]
      #name of bird is equal to a new, empty hash UNLESS that key/name already exists in the hash. could ALSO write it as..
        #if new_pigeon[name].nil?
          #new_pigeon[name] = {}
        #end
      new_pigeon[name][:color] = [] unless new_pigeon[name][:color]
      #new_pigeon[name] becomes a hash when you treat it like one: here we've added 
      #colors appear multiple times SO need to create an array for the colors. could ALSO write it as...
        #if new_pigeon[name][:color].nil?
          #new_pigeon[name][:color] = []
        #end
      if key == :color
        new_pigeon[name][key] << attribute
        #if key color already exists, add this new attribute to that array
      else
        new_pigeon[name][key] = attribute
        #if the key is not color, then just create a new key-value pair
      end
    end
  end
end
puts new_pigeon

# =========MY ATTEMPT=============
# pigeon_characteristics = Hash.new

# pigeon_data[:gender][:male].each do |name|
#   pigeon_characteristics[name] = {}
# end

# pigeon_data[:gender][:male].each do |name|
#   pigeon_characteristics[name][:gender] = "male"
# end

# pigeon_data[:gender][:female].each do |value|
#   pigeon_characteristics[value] = {:gender => "female"}
# end

# pigeon_data[:color][:purple].each do |value|
#   pigeon_characteristics[value] = {:color => ["purple"]}
# end

# pigeon_data[:color][:grey].each do |value|
#   pigeon_characteristics[value] = {:color => ["grey"]}
# end

# pigeon_data[:color][:white].each do |value|
#   pigeon_characteristics[value] = {:color => ["white"]}
# end

# pigeon_data[:color][:brown].each do |value|
#   pigeon_characteristics[value] = {:color => ["brown"]}
# end

# pigeon_data[:lives]["Subway"].each do |value|
#   pigeon_characteristics[value][:lives] = "Subway"
# end

# pigeon_data[:lives]["Central Park"].each do |value|
#   pigeon_characteristics[value][:lives] = "Central Park"
# end

# pigeon_data[:lives]["Library"].each do |value|
#   pigeon_characteristics[value][:lives] = "Library"
# end

# pigeon_data[:lives]["City Hall"].each do |value|
#   pigeon_characteristics[value][:lives] = "City Hall"
# end

# # pigeon_data[:color].each do |color, value_name_array|
# #   value_name_array.each do |pigeon|
# #     pigeon_characteristics[pigeon][:color] << [color]
# #   end
# # end

# puts "#{pigeon_characteristics}"

# =========================

# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => "male",
#     :lives => "Subway"
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],
#     :gender => "male",
#     :lives => "Library"
#   },
#   "Lucky" => {
#     :color => ["purple"],
#     :gender => "male",
#     :lives => "City Hall"
#   },
#   "Ms .K" => {
#     :color => ["grey", "white"],
#     :gender => "female",
#     :lives => "Central Park"
#   },
#   "Queenie" => {
#     :color => ["white", "brown"],
#     :gender => "female",
#     :lives => "Subway"
#   },
#   "Andrew" => {
#     :color => ["white"],
#     :gender => "male",
#     :lives => "Central Park"
#   },
#   "Alex" => {
#     :color => ["white", "brown"],
#     :gender => "male",
#     :lives => "Central Park"
#   }
# }