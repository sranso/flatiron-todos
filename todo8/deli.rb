class Deli
    attr_accessor :name, :order

    def initiate
        @line
    end

    def take_a_number(name)
        i = 0
        order = []
        name.each do |name|
            i += 1
            order << "#{i}. #{name}"
        end
        order
    end

    def now_serving(queue)
        queue.drop(1)
        i = 0
        queue.each do |name|
            name.gsub(/\d/)
        end
    end

end

sarah = Deli.new
# sarah.take_a_number(["sarah", "keith", "kate"])
puts sarah.now_serving(["1. sarah", "2. keith", "3. kate"])