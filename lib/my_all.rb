require 'pry'

def my_all?(collection)
  i = 0
  block_return_values=[]
  while i < collection.length
    i += 1
    yield(collection[i])
    i = i + 1
  end
end

my_all? ([1,2,3]) {|i| i < 2}