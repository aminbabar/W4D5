


def first_anagram?(str1, str2)
    count = Hash.new(0)
    str1.each_char {|char| count[char] += 1} 
    str2.each_char {|char| count[char] -= 1} 
    count.values.all?(&:zero?)

end



def second_anagram?(str1, str2)
    str1 = str1.chars
    str2 = str2.chars
    str1.each do |char_1|
        if str2.index(char_1)
            str2.delete_at(str2.index(char_1))
        else
            return false
        end
    end
    str2.length.zero?
end





def third_anagram?(str1, str2)
    str1.chars.sort() == str2.chars.sort()
end



def fourth_anagram?(str1, str2)
    count = Hash.new(0)
    str1.each_char {|char| count[char] += 1} 
    str2.each_char {|char| count[char] -= 1} 
    count.values.all?(&:zero?)

end



p third_anagram?("gizmo", "sally")    #=> false
p third_anagram?("elvis", "lives")    #=> true
