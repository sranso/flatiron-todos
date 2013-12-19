class Heartbeats

  def initialize(array)
    @beats = array # ["bum bum", "bam bam", "dun dun", "ba ba", "ba da"]
  end

  def each
    @beats.each do |element|
      yield element if block_given?
    end
  end

  def first
    @beats[0]
  end

  def [](num)
    @beats[num]
  end

end