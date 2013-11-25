stuff = ["candy", :pepper, "wall", :ball, "wacky"]
def first_starts_wa(array)
  array.collect do |item|
  	if item[0..1] == "wa"
  		item then
  		break
  	end
  end
end
p first_starts_wa(stuff)