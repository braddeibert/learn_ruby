#write your code here
def translate input
    translated_word = ""
    vowels = "aeiou"
    all_words = input.split(" ")

    all_words.each do |word|

        translated = word.split(//)

        while !vowels.include? translated[0]
            translated.push(translated[0])
            translated = translated.slice(1, translated.length - 1)
        end
        
        if translated[0] == "u" && translated.last == "q"
            translated.push(translated[0])
            translated = translated.slice(1, translated.length - 1)
        end

        translated.each do |letter|
            translated_word = translated_word + letter
        end

        translated_word = translated_word + "ay "
    end

    return translated_word.chop
end