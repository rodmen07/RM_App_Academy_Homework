require_relative "./stack"

class SmartStack < Stack
    attr_reader :max_size

    def initialize(max_size)
        @max_size = max_size
        super()
    end

    def full?
        self.size == self.max_size
    end

    def push(*args)
        raise 'the stack is full' if (args.length + self.size) > @max_size
        @underlying_array.push(*args)
        self.size
    end

    def pop(n = 1)
        removed_items = []
        n.times { removed_items << @underlying_array.pop }
        return removed_items
    end
end
