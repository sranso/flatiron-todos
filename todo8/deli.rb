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
            [(name.split[0] = "#{i.to_s}."), name.split[1]].join(" ")
        end
    end

end

sarah = Deli.new
# sarah.take_a_number(["sarah", "keith", "kate"])
# sarah.now_serving(["1. sarah", "2. keith", "3. kate", "4. nikki", "5. armando", "6. voss", "7. blake", "8. ashley", "9. nisha", "10. popsicle", "11. derek"])