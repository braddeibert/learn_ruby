#write your code here
def add num1, num2
    num1 + num2
end

def subtract num1, num2
    num1 - num2
end

def sum array
    sum = 0

    array.each do |i|
        sum = sum + i 
    end

    sum
end

def multiply *nums
    product = 1

    nums.each do |i|
        product = product * i 
    end
    
    product
end

def power num1, num2
    num1**num2
end

def factorial num
    product = num
    while num > 1
        num = num - 1
        product = product * num
    end

    product
end


