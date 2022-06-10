require "byebug"

class Queue

    def initialize
        @queue=[]
    end


    def enqueue(el)

        @queue.push(el)
    end


    def dequeue

        @queue.shift
    end


    def peek
        @queue

    end


end