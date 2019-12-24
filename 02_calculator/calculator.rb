#write your code here
def add(num1, num2)
    return num1 + num2
end

def subtract(num1, num2)
    return num1 - num2
end

def sum(arr)
    result = 0
    arr.each do |el|
        result += el
    end
    return result
end

def multiply(arr)
    result = 1
    arr.each do |item|
        result *= item
    end
    return result
end

def power(num, p)
    return num ** p
end

def factorial(num)
    #TODO
    result = 1
    (1..num).each do |el|
        result *= el
    end
    return result
end