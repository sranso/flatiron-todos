require_relative 'transpose.rb'

describe Array do
  describe "#my_transpose" do
    it 'should transpose array items' do
      expect([[1, 2, 3], [:a, :b, :c]].my_transpose).to eq([[1, :a], [2, :b], [3, :c]])
      expect([[1,2], [3,4], [5,6]].transpose).to eq([[1, 3, 5], [2, 4, 6]])
      expect([]).to eq([])
    end
  end
end