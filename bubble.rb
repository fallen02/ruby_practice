def buble_sort arr
  unsorted = true
  while unsorted do
    i = 0
    unsorted = false
    while i < arr.length - 1 do
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        unsorted = true
      end
      i += 1
    end
  end
print arr
end

buble_sort([4,3,78,2,0,2])
