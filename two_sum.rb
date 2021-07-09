


def two_sum_brute?(arr, target_sum)
    (0...arr.length).each do |i|
        (0...arr.length).each do |j|
            next if i == j
            return true if arr[i] + arr[j] == target_sum
        end
    end
    return false
end



arr = [0, 1, 5, 7]
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false