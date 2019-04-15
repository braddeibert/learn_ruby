#write your code here
def echo input
    return input
end

def shout input
    return input.upcase
end

def repeat input, repeatCount = 2
    input = input + " "
    repeated = input * repeatCount

    return repeated.chop
end

def start_of_word input, firstLetters
    return input.slice(0, firstLetters)
end

def first_word input
    firstSpace = input.index(" ")
    return input.slice(0, firstSpace)
end

def titleize input
    words = input.split(" ")
    title = ""

    words.each do |i|
        i = i.capitalize + " "

        if i == "And " || i == "Over " || i == "The "
            i = i.downcase
        end

        title = title + i
    end

    #Capitalizes first character of title:
    firstChar = title.slice(0)
    title = title.delete_prefix(firstChar)
    firstChar = firstChar.capitalize
    title = title.insert(0, firstChar)

    return title.chop
end
