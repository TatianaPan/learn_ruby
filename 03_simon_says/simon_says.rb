#write your code here
def echo(str)
    return str
end

def shout(str)
    return str.upcase
end

def repeat(str, num=2)
    result = ""
    (0...num).each do
        result << str + ' '
    end
    return result.chop
end

def start_of_word(word, num)
    str = ""
    for i in 0...num do
        str << word[i]
     end   
     return str
end

def first_word(str)
    arr = str.split(' ')
    return arr[0]
end

def titleize(str)
    if str.include? ' '
        little_words = ['a', 'and', 'or', 'the', 'at', 'on', 'over', 'to']
        arr = str.split(' ')
        arr.each do |word|
            if word != arr[0] && little_words.include?(word)
                next
            else
                word.capitalize!
            end
        end
        return arr.join(' ')
    else
        return str.capitalize
    end
end