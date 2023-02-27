class SmartStack < Stack
    def initialize(num)
        @max_size = num
        super()
    end

    def max_size
        @max_size
    end

    def full?
        return true if self.size == self.max_size
        false
    end

    def push(*args)
        raise "stack is full" if (@underlying_array + args).size > self.max_size
        @underlying_array.push(*args)
        self.size
    end

    def pop(num = 1)
        length = @underlying_array.size
        if num <= length
            @underlying_array.pop(num).to_a.reverse
        else
            result = @underlying_array.pop(length).to_a.reverse
            (num - length).times { result << nil }
            result
        end
    end
end
