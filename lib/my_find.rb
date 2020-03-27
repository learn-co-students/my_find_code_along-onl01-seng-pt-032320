require 'pry'

def my_find(collection)
  i = 0 
  while i < collection.length 
    if yield(collection[i])     #i passed to block below, and if i is divisible by 3 and 5 then..
      return collection[i]      #return collection[1]. the return value of this method is the first element that made the block return to true. and because no code will execute after return it will stop after the first element that returns true. if it returns false, it will continue to next element in the array until it gets a true. 
    end 
    i += 1 
  end 
end

collection = (1..100).to_a
my_find(collection) {|i| i % 3 == 0 and i % 5 == 0 }


# refactor with if statment madifier 
def my_find(collection)
  i = 0
  while i < collection.length
    return collection[i] if yield(collection[i])
    i = i + 1
  end
end