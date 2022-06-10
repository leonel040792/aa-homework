require "byebug"

class Map

    def initialize

        @map=[]

    end


    def set(key, value)
        @map << [key,val]
    end


    def get(key)
        @map.each_with_index do |subarray, idx|
            return subarray if subarray[0]==key
        end
    end


    def delete(key)
        @map.each_with_index do |subarray, idx|
            @map.delete_at(idx) if subarray[0]==key
        end
    end


    def show
        @map

    end


end