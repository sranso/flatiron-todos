# Collections Practice

array = ["blake", "ashley", "scott"]

# 1. sort the following array in ascending order
#   ["blake", "ashley", "scott"]
array.sort

# 2. sort the following array in descending order
#   ["blake", "ashley", "scott"]
array.sort { |x,y| y <=> x } #array.sort.reverse

# 3. put the following array in reverse order
#   ["blake", "ashley", "scott"]
array.reverse

# 4. grab the second element in the array
#   ["blake", "ashley", "scott"]
array[1]

# 5. print each element of the array to the console
#   ["blake", "ashley", "scott"]
array.each {|teacher| print teacher}

# 6. create a new array in the following order
#   ["blake", "ashley", "scott"] 
#   should transform into
#   ["blake", "scott", "ashley"]
array[1] = "scott"
array[2] = "ashley" #array.values_at(0, 2, 1)

# 7. using the following array create a hash where the elements in the array are the keys and 
# the values of the hash are those elements with the 3rd character changed to a dollar sign.
#   ["blake", "ashley", "scott"]
hash = {}
array.each do |name|
	hash[name] = name.gsub(name[2],"$")
end

# 8. create a hash with two keys, "greater_than_10", "less_than_10" and their values will be 
# an array of any numbers greater than 10 or less than 10 in the following array
#   [100, 1000, 5, 2, 3, 15, 1, 1, 100 ]
math = [100, 1000, 5, 2, 3, 15, 1, 1, 100]
greater_than_10 = []
less_than_10 = []

math.each do |num|
	if num > 10
		greater_than_10 << num
	elsif num < 10
		less_than_10 << num
	end
end

math_hash = {:greater_than_10 => greater_than_10, :less_than_10 => less_than_10}

# =========new solution 11/24/13=========
array = [100, 1000, 5, 2, 3, 15, 1, 1, 100]
hash = {}
hash[:greater_than_10] = []
hash[:less_than_10] = []
array.each do |num|
  if num > 10
    hash[:greater_than_10] << num
  elsif num < 10
    hash[:less_than_10] << num
  end
end

# 9. find all the winners and put them in an array
#   {:blake => "winner", :ashley => "loser", :caroline => "loser", :carlos => "winner"}
contest = {:blake => "winner", :ashley => "loser", :caroline => "loser", :carlos => "winner"}
winners = []
contest.each do |key, value|
	if value == "winner"
		winners << key
	end
	winners
end

# 10. add the following arrays
#   [1,2,3] and [5,9,4]
[1,2,3].concat([5,9,4])

# 11. find all words that begin with "a" in the following array
#   ["apple", "orange", "pear", "avis", "arlo", "ascot" ]
container = []
["apple", "orange", "pear", "avis", "arlo", "ascot"].each do |word|
	if word[0] == "a"
		container << word
	end
	container
end

# ==== WITH REGEX
container = []
stuff.each do |item|
	if item.match(/^a/i)
		container << item
	end
end

# =========new solution 11/24/13=========
["apple", "orange", "pear", "avis", "arlo", "ascot"].collect do |word|
  if word[0] == "a"
    word
  end
end

# 11. sum all the numbers in the following array
#   [11,4,7,8,9,100,134]
[11,4,7,8,9,100,134].reduce(:+)
#OR
sum = array.reduce(0) {|sum, item| sum + item} #reduce(0) says start as sum=0
#OR
sum = 0
[11,4,7,8,9,100,134].each do |x|
	sum += x
end

# 12. Add an "s" to each word in the array except for the 2nd element in the array?
#   ["hand","feet", "knee", "table"]
array = ["hand","feet", "knee", "table"]
newarray = []
array.each_with_index do |word, index|
	next if index == 1
	newarray << word + "s"
end
puts newarray

# CHALLENGE

# 1. word count
# Count how many times each word appears in my story.
# Tip: You'll need to use Hash.new(0) to do this rather than creating a hash using literal syntax like {}.
story = "The summer of tenth grade was the best summer of my life.  I went to the beach everyday and we had amazing weather.  The weather didnt really vary much and was always pretty hot although sometimes at night it would rain.  I didnt mind the rain because it would cool everything down and allow us to sleep peacefully.  Its amazing how much the weather affects your mood.  Who would have thought that I could write a whole essay just about the weather in tenth grade.  Its kind of amazing right?  Youd think for such an interesting person I might have more to say but you would be wrong"
story_array = story.split
hash = Hash.new(0)
story_array.collect do |word|
	word.downcase
	hash[word] += 1
end
story_joined = story_array.join(" ")

# 2. song library
# convert the following array of song titles
song_titles = ["dave matthews band - tripping billies", "dave matthews band - #41", "calvin harris - some techno song", "avicii - some other dance song", "oasis - wonderwall", "oasis - champagne supernova"]
song_titles.collect do |item|
    item.split(" - ")
end
# puts song_titles
hash = {}
#sa = the result of lines 151-153
sa = [["dave matthews band", "tripping billies"], ["dave matthews band", "#41"], ["calvin harris", "some techno song"], ["avicii", "some other dance song"]]
sa.each do |songartist|
    hash[songartist[0]] = [] unless hash[songartist[0]]
    hash[songartist[0]] << songartist[1]
end
# p hash
