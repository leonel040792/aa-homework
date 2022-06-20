class LRUCache
  attr_reader :cache
    def initialize(n)
      @cache= Array.new(n)
    end

    def count
      # returns number of elements currently in cache
      self.cache.count{|ele| ele!=nil}
    end

    def add(el)
      # adds element to cache according to LRU principle
      if cache.include?(el)
        cache.push(cache.delete(el))
      else
        cache.push(el)
        cache.shift
      end
    end

    def show
      cache
    end

    private
    # helper methods go here!

  end

  johnny_cache = LRUCache.new(4)

  johnny_cache.add("I walk the line")
  johnny_cache.add(5)

  johnny_cache.count # => returns 2

  johnny_cache.add([1,2,3])
  johnny_cache.add(5)
  johnny_cache.add(-5)
  johnny_cache.add({a: 1, b: 2, c: 3})
  johnny_cache.add([1,2,3,4])
  johnny_cache.add("I walk the line")
  johnny_cache.add(:ring_of_fire)
  johnny_cache.add("I walk the line")
  johnny_cache.add({a: 1, b: 2, c: 3})


  p johnny_cache.show