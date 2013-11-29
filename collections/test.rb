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
  schools.each do |key1, val1|
    val1.each do |key2, val2|
      if key2 == :location
        newhash[val2] = {} unless newhash[val2] #val2 = SF or NYC
        newhash[val2][key1] = {}
        newhash
        debugger
      # elsif key2 == :price # newhash[NYC][flatiron][:price] = free
      #   debugger
      #   newhash[val2] #val2 = free or your soul #PROBLEM IS: VAL2 HERE PRODUCES A 'NIL' B/C IT'S DIFF THAN VAL2 ON LINE 30
      end
    end
  end
  newhash
end
p bylocation(schools)