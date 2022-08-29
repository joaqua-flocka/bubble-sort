def bubble_sort(array)
    sorted_array = array.clone
    sorted_array.each_with_index do |item,idx|
        while sorted_array[idx + 1] && item > sorted_array[idx + 1]
            temp = sorted_array[idx + 1]
            sorted_array[idx + 1] = item
            sorted_array[idx] = temp
        end
    end
    sorted_array.each do |item|
        (sorted_array.length - 1).times do |i|
            if sorted_array[i] > sorted_array[i + 1]
                sorted_array = bubble_sort(sorted_array)
            end
        end
    end
    sorted_array
end

arr = [4,3,78,2,0,2]

p bubble_sort(arr)
p arr