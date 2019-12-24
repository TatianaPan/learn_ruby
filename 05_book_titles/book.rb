class Book
    attr_reader :title
    def initialize
    end
# write your code here
    def title=(str)
        if str.include? ' '
            arr = str.split(' ')
            little_words = ['a', 'and', 'or', 'in', 'of', 'the', 'at', 'on', 'over', 'to', 'an']
            arr.each do |word|
                if word != arr[0] && little_words.include?(word)
                    next
                else
                    word.capitalize!
                end
            end
            @title = arr.join(' ')
        else
            @title = str.capitalize
        end
    end
end
