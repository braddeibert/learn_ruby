class Book
# write your code here
    
    def initialize 

    end
    
    def title=(title)
        @title = title
    end

    def title 
        words = @title.split(" ")
        formatted_title = ""
        
        conjunctions = ["for", "and", "nor", "but", "or", "yet", "so"]
        prepositions = ["about", "above", "across", "after", "against", "along", "amid", "among", "anti", "around", "as", "at", "before", "behind", "below", "beneath", "beside", "besides", "between", "beyond", "but", "by", "concerning", "considering", "despite", "down", "during", "except", "excepting", "excluding", "following", "for", "from", "in", "inside", "into", "like", "minus", "near", "of", "off", "on", "onto", "opposite", "outside", "over", "past", "per", "plus", "regarding", "round", "save", "since", "than", "through", "to", "toward", "towards", "under", "underneath", "unlike", "until", "up", "upon", "versus", "via", "with", "without", "within"]
        articles = ["the", "a", "an"]
        
        words.each do |word|
            if !(prepositions.include?(word) || conjunctions.include?(word) || articles.include?(word))
                word = word.capitalize
            end

            if formatted_title == ""
                word = word.capitalize
            end

            formatted_title = formatted_title + word + " "
        end

        
        @title = formatted_title.chop
    end

end
