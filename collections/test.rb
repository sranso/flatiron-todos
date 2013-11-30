# 11. Convert the nested data structure from it's current structure to a structure that organizes the schools by location.
require 'debugger'
schools = {
  "flatiron school bk" => {
    :location => "NYC",
    :price => "free"
  },
  "dev boot camp" => {
    :location => "SF",
    :price => "a million dollars"
  },
  "dev boot camp chicago" => {
    :location => "Chicago",
    :price => "half a million dollars"
  },
  "general assembly" => {
    :location => "NYC",
    :price => "too much"
  },
  "some school in SF" => {
    :location => "SF",
    :price => "your soul"
  }
}
def bylocation(schools)
  newhash = {}
  schools.each do |school_name, school_info|
    school_info.each do |key2, val2| #:location :price, SF your soul
      if key2 == :location
        newhash[val2] = [] unless newhash[val2]
        newhash[val2] << {:name => school_name}
        p newhash
      elsif key2 == :price
        newhash.each do |location, school_array|
          school_array.each do |school_hash|
            school_hash.each do |name_k, name_v|
              school_hash[key2] = val2 if name_v == school_name
            end
          end
        end
      end
    end
  end
  newhash
end
# def by_location(some_hash)
#   location_hash = {}
#   some_hash.each do |school_name, school_info|
#     location = school_info[:location]
#     price = school_info[:price]
#     if not location_hash.has_key?(location)
#       location_hash[location] = []
#     end
#     location_hash[location] << {:name => school_name, :price => price}
#   end

#   puts location_hash

# end
p bylocation(schools)

