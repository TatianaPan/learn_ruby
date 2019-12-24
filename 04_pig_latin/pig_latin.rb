#write your code here
def translate(str)
    if str.include? ' '
        arr = str.split(' ')
        
        arr.collect! do |word|
            pig_latin(word)
        end
        
        return arr.join(' ')
    else
        return pig_latin(str)
    end
end

def pig_latin(str)
    vowels = ['a', 'o', 'e', 'u', 'i']
    result = ''
    if vowels.include?(str[0])
        result << str + 'ay' 

    else
        unless vowels.include?(str[1])
         
                first = str[0] + str[1]
                result << str.slice!(2, str.length - 1) + first + 'ay'
        else
            
            if str[0] == 'q' && str[1] == 'u'
                first = str[0] + str[1]
                result << str.slice!(2, str.length - 1) + first + 'ay'
            else
                first = str[0]
                result << str.slice!(1, str.length - 1) + first + 'ay'
            end
        end
    end
    puts result
    return result
end