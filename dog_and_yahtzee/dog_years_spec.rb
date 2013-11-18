require './dog_years'

describe "#age_in_years" do
	it "should return age" do
		expect(age_in_years(14)).to eq(14)
	end
end

describe "#age_in_days" do
	it "should return age * 365" do
		expect(age_in_days(14)).to eq(5110)
	end
end

describe "#age_in_dog_years" do
	it "should return age * 7" do
		expect(age_in_dog_years(14)).to eq(98)
	end
end