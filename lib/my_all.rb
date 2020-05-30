require 'pry'

def my_all?(collection)
  i = 0
  block_return_values=[]
  while i < collection.length
    i += 1
    block_return_values << yield(collection[i])
  end
  
    if block_return_values.include?(false)
      false
    else
      TRUE
    end
end

my_all? ([1,2,3]) {|i| i < 2}