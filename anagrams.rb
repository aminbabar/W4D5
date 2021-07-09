


def first_anagram?(str1, str2)
    count = Hash.new(0)
    str1.each_char {|char| count[char] += 1} 
    str2.each_char {|char| count[char] -= 1} 
    count.values.all?(&:zero?)

end



def second_anagram?(str1, str2)
    
end



# p anagram?("gizmo", "sally")    #=> false
# p anagram?("elvis", "lives")    #=> true

