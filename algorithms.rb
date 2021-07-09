require 'byebug'

def my_min(list)
    list.each do |ele1|
        list.each_with_index do |ele2, i|
            next if ele1 == ele2
            break if ele1 > ele2
            return ele1 if i == list.length - 1
        end
    end
    nil
end


def my_min_better(list)
    min = list.first
    list.each { |ele| min = ele if ele < min}
    min
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

# p my_min_better(list)

# list = [5, 3, -7]
def largest_contiguous_subsum(list)
  all_subs = []
  list.each_with_index do |ele_1, i|
    sub_arr = [ele_1] #! <- this has an address
    all_subs << sub_arr
    # debugger
    list.each_with_index do |ele_2, j|
      next if i >= j 
      # new_sub = sub_arr + [ele_2]
      # new_sub = all_subs.last + [ele_2]
      sub_arr << ele_2
      dup = sub_arr.dup
      p dup.object_id
      p sub_arr.object_id
      all_subs << dup
      # debugger
    end
  end
  # debugger
  all_subs.map(&:sum).max
end

# p largest_contiguous_subsum(list)           # => 8

list = [2, 3, -6, 7, -6, 7]
# p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])

list = [-5, -1, -3]
# p largest_contiguous_subsum(list) # => -1 (from [-1])

def largest_contiguous_subsum_better(list)
  curr_sum = list.first
  largest_sum = list.first

  (1...list.length).each do |i| 
    curr_sum = 0 if curr_sum < 0
    curr_sum += list[i]
    largest_sum = curr_sum if curr_sum > largest_sum    
  end
  largest_sum

end

# list = [5, 3, -7]
# p largest_contiguous_subsum_better(list)           # => 8

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum_better(list) # => 8 (from [7, -6, 7])

list = [-5, -1, -3]
p largest_contiguous_subsum_better(list) # => -1 (from [-1])