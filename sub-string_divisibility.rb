def gen_pan_numbers_as_array
    [1,2,3,4,5,6,7,8,9,0].permutation.to_a
end

def test_for_divisibility(array)
    return false if not (([array[1],array[2],array[3]].join.to_i) % 2 == 0)
    return false if not (([array[2],array[3],array[4]].join.to_i) % 3 == 0)
    return false if not (([array[3],array[4],array[5]].join.to_i) % 5 == 0)
    return false if not (([array[4],array[5],array[6]].join.to_i) % 7 == 0)
    return false if not (([array[5],array[6],array[7]].join.to_i) % 11 == 0)
    return false if not (([array[6],array[7],array[8]].join.to_i) % 13 == 0)
    return false if not (([array[7],array[8],array[9]].join.to_i) % 17 == 0)
    true
end
sum = 0

gen_pan_numbers_as_array.each_with_index do |array,index|
    if test_for_divisibility(array)
        sum +=array.join.to_i
    end


end
p sum

