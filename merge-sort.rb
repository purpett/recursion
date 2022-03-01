array = [1,-5,0,23,170,2.3,9,10,-9]

def merge(arr1, arr2)
  i = 0
  j = 0
  final_array = []
  while i < arr1.length || j < arr2.length 
    if i == arr1.length 
      final_array << arr2[j]
      j += 1
    elsif j == arr2.length
      final_array << arr1[i]
      i += 1
    elsif arr1[i] < arr2[j]
      final_array << arr1[i]
      i += 1
    else 
      final_array << arr2[j]
      j += 1
    end
  end
  return final_array
end

def merge_sort(array)
  if array.length < 2
    return array
  else
    mid = array.length / 2
    arr1 = merge_sort(array[0...mid])
    arr2 = merge_sort(array[mid..-1])
    merge(arr1,arr2)
  end
end

p merge_sort(array)
