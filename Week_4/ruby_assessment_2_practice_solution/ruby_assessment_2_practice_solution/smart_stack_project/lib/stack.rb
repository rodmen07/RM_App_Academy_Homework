class Stack
    def initialize
        @underlying_array = []
    end

    def size
        @underlying_array.length
    end

    def empty?
        @underlying_array.length == 0
    end

    def top
        @underlying_array[-1]
    end

    def peek(n)
        @underlying_array[-n..-1]
    end

    def push(item)
        @underlying_array.push(item)
        self.size
    end

    def pop
        @underlying_array.pop
    end
end
