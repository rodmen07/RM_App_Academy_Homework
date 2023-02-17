# Exercise 1: Stack

class Stack
    def initialize
        @stack = []
    end

    def push(el)
        @stack.push(el)
    end

    def pop
        @stack.pop
    end

    def peek
        @stack[-1]
    end
end


# Exercise 2: Queue

class Queue
    def initialize
        @line = []
    end

    def enqueue (ele)
        @line.unshift(ele)
    end

    def dequeue
        @line.pop
    end

    def peek
        @line[-1]
    end
end

# Exercise 3: Map

class Map
    def initialize
        @map = Array.new
    end

    def set(key, value)
        @map << [key, value]
    end

    def get(key)
        @map.each { |ele| return ele if ele[0] == key }
        nil
    end

    def delete(key)
        @map.each { |ele| delete ele if ele[0] == key }
        nil
    end

    def show
        @map
    end
end
