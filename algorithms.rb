

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
    list.each {|ele| min = ele if ele < min}
    min
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

# p my_min_better(list)