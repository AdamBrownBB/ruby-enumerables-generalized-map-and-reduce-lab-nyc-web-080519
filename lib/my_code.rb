def map(source_array)
  i = 0 
  new_array = []
  while i < source_array.length do
    new_array.push(yield(source_array[i]))
  i +=1 
  end 
return new_array
end 


def reduce(source_array)
  
  def reduce_to_total(source_array, starting_point=0)
 i = 0 
 result = starting_point
    while i < source_array.length do
   result = (yield(source_array[i]) + result)
  i +=1 
  
  end 
    return result
  end 


def reduce_to_all_true(source_array)
   i = 0 
    while i < source_array.length do
     if !source_array[i] 
     return false
    end 
  i +=1 
  
 end 
 return true 
end 
