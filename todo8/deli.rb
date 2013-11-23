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
        queue.shift
        i = 0
        queue.collect do |name|
            i +=1
            name.gsub(name[0], i.to_s)
        end
    end

end

sarah = Deli.new
# sarah.take_a_number(["sarah", "keith", "kate"])
puts sarah.now_serving(["1. sarah", "2. keith", "3. kate"])