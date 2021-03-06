


def two_sum_brute?(arr, target_sum)
    (0...arr.length).each do |i|
        (0...arr.length).each do |j|
            next if i == j
            return true if arr[i] + arr[j] == target_sum
        end
    end
    return false
end

def two_sum_sort?(arr, target_sum)
    arr.sort!

    front = 0
    back = arr.length - 1
    while front < back 
        if arr[front] + arr[back] < target_sum
            front += 1
        elsif arr[front] + arr[back] > target_sum
            back -= 1
        else
            return true
        end
    end
    # arr.each { |ele| return true if arr.include?(target_sum - ele) }
    false
end


def two_sum_hash?(arr, target_sum)
    hash = {}
    arr.each_with_index {|ele, i| hash[ele] = i}
    arr.each_with_index do |ele, i|
        return true if (hash[target_sum - ele]) && (i != hash[target_sum - ele])
    end
    false
end

arr = [0, 1, 5,5, 7]
p two_sum_hash?(arr, 6) # => should be true
p two_sum_hash?(arr, 10) # => should be false
